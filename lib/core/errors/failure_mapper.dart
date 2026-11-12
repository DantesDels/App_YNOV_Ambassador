import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'app_exception.dart';
import 'failure.dart';

/// Converts any lower-layer error into a typed [Failure].
abstract final class FailureMapper {
  static Failure from(Object error) {
    if (error is FailureException) {
      return error.failure;
    }
    if (error is AppException) {
      return _fromException(error);
    }
    if (error is DioException) {
      return _fromDio(error);
    }
    if (error is StripeException) {
      return PaymentFailure(_stripeMessage(error));
    }
    return const UnknownFailure();
  }

  static Failure _fromException(AppException exception) {
    return switch (exception) {
      NetworkException() => const NetworkFailure(),
      RequestTimeoutException() => const NetworkFailure('Le serveur ne répond pas. Réessaie.'),
      UnauthorizedException() => AuthFailure(exception.message),
      ForbiddenException() => ValidationFailure(exception.message, 'forbidden'),
      NotFoundException() => const NotFoundFailure(),
      ValidationException() => ValidationFailure(exception.message),
      ConflictException() => ConflictFailure(exception.message, 'conflict'),
      PaymentException() => PaymentFailure(exception.message),
      StorageException() => const StorageFailure(),
      FailureException() => exception.failure,
      ServerException(:final statusCode, :final message) => ServerFailure(message, '$statusCode'),
      UnknownException() => const UnknownFailure(),
    };
  }

  static Failure _fromDio(DioException error) {
    return switch (error.type) {
      DioExceptionType.connectionTimeout ||
      DioExceptionType.sendTimeout ||
      DioExceptionType.receiveTimeout => const NetworkFailure('Le serveur ne répond pas. Réessaie.'),
      DioExceptionType.connectionError => const NetworkFailure(),
      DioExceptionType.badCertificate => const NetworkFailure('Connexion non sécurisée refusée.'),
      DioExceptionType.cancel => const NetworkFailure('Requête annulée.'),
      DioExceptionType.badResponse => _fromStatus(error.response?.statusCode, error),
      DioExceptionType.unknown => const NetworkFailure(),
      _ => const NetworkFailure(),
    };
  }

  static Failure _fromStatus(int? status, DioException error) {
    final String message = _serverMessage(error.response?.data) ?? _statusMessage(status);
    if (status == 401) {
      return AuthFailure(message);
    }
    if (status == 403) {
      return ValidationFailure(message, 'forbidden');
    }
    if (status == 404) {
      return NotFoundFailure(message);
    }
    if (status == 409) {
      return ConflictFailure(message, 'conflict');
    }
    if (status == 402) {
      return PaymentFailure(message);
    }
    if (status != null && status >= 500) {
      return ServerFailure(message, '$status');
    }
    return ValidationFailure(message, status?.toString());
  }

  static String? _serverMessage(Object? data) {
    if (data is Map<String, dynamic>) {
      final Object? message = data['message'] ?? data['error'];
      if (message is String && message.trim().isNotEmpty) {
        return message;
      }
    }
    return null;
  }

  static String _statusMessage(int? status) => switch (status) {
    400 => 'Requête invalide.',
    401 => 'Ta session a expiré.',
    403 => 'Accès refusé.',
    404 => 'Contenu introuvable.',
    409 => 'Quelqu’un a été plus rapide que toi. Réessaie.',
    429 => 'Trop de tentatives. Patiente un instant.',
    _ => 'Une erreur est survenue.',
  };

  static String _stripeMessage(StripeException exception) {
    final LocalizedErrorMessage error = exception.error;
    if (error.code == FailureCode.Canceled) {
      return 'Paiement annulé.';
    }
    return error.localizedMessage ?? error.message ?? 'Paiement interrompu.';
  }
}
