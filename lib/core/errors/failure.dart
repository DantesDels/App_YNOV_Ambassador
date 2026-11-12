/// Domain-level failures. UI switches on these sealed types, never on raw
/// exceptions.
sealed class Failure {
  const Failure(this.message, {this.code});

  final String message;
  final String? code;

  String get userMessage => message;

  @override
  String toString() => '$runtimeType($code): $message';
}

final class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'Pas de connexion. Réessaie une fois en ligne.']);
}

final class AuthFailure extends Failure {
  const AuthFailure([super.message = 'Authentification requise.']);
}

final class ValidationFailure extends Failure {
  const ValidationFailure(super.message, [String? code]) : super(code: code);
}

final class NotFoundFailure extends Failure {
  const NotFoundFailure([super.message = 'Contenu introuvable.']);
}

final class ConflictFailure extends Failure {
  const ConflictFailure(super.message, [String? code]) : super(code: code);
}

final class PaymentFailure extends Failure {
  const PaymentFailure([super.message = 'Paiement refusé ou annulé.', String? code]) : super(code: code);
}

final class StorageFailure extends Failure {
  const StorageFailure([super.message = 'Tes données locales sont indisponibles.']);
}

final class ServerFailure extends Failure {
  const ServerFailure([super.message = 'Le serveur a eu un souci. Réessaie plus tard.', String? code]) : super(code: code);
}

final class UnknownFailure extends Failure {
  const UnknownFailure([super.message = 'Une erreur inattendue est survenue.']);
}
