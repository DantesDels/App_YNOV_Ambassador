import 'failure.dart';

sealed class AppException implements Exception {
  const AppException(this.message, {this.cause});

  final String message;
  final Object? cause;

  @override
  String toString() => '$runtimeType: $message';
}

final class NetworkException extends AppException {
  const NetworkException([super.message = 'Connexion impossible. Vérifie ton réseau.', Object? cause])
      : super(cause: cause);
}

final class RequestTimeoutException extends AppException {
  const RequestTimeoutException([super.message = 'Le serveur met trop de temps à répondre.', Object? cause])
      : super(cause: cause);
}

final class UnauthorizedException extends AppException {
  const UnauthorizedException([super.message = 'Ta session a expiré, reconnecte-toi.', Object? cause])
      : super(cause: cause);
}

final class ForbiddenException extends AppException {
  const ForbiddenException([super.message = 'Cette action est réservée aux étudiants vérifiés.', Object? cause])
      : super(cause: cause);
}

final class NotFoundException extends AppException {
  const NotFoundException([super.message = 'Élément introuvable.', Object? cause])
      : super(cause: cause);
}

final class ValidationException extends AppException {
  const ValidationException(super.message, {super.cause});
}

final class ConflictException extends AppException {
  const ConflictException(super.message, {super.cause});
}

final class PaymentException extends AppException {
  const PaymentException([super.message = 'Le paiement n’a pas abouti.', Object? cause])
      : super(cause: cause);
}

final class StorageException extends AppException {
  const StorageException([super.message = 'Impossible d’accéder au stockage sécurisé.', Object? cause])
      : super(cause: cause);
}

final class ServerException extends AppException {
  const ServerException(this.statusCode, [String message = 'Une erreur serveur est survenue.', Object? cause])
      : super(message, cause: cause);

  final int statusCode;
}

final class UnknownException extends AppException {
  const UnknownException([super.message = 'Une erreur inattendue est survenue.', Object? cause])
      : super(cause: cause);
}

final class FailureException extends AppException {
  FailureException(this.failure) : super(failure.message);

  final Failure failure;
}
