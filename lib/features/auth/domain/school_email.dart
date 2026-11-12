/// Strict validation of the student's school address.
///
/// Only addresses on the configured school domain are accepted. The check runs
/// on both the client (instant feedback) and the backend (authoritative).
class SchoolEmail {
  const SchoolEmail._(this.value);

  final String value;

  String get localPart => value.split('@').first;

  String get domain => value.split('@').last;

  static SchoolEmailValidation validate(String raw, {required String allowedDomain}) {
    final String normalized = raw.trim().toLowerCase();
    if (normalized.isEmpty) {
      return const InvalidSchoolEmail('Renseigne ton adresse étudiante.');
    }
    if (normalized.length > 254) {
      return const InvalidSchoolEmail('Cette adresse est trop longue.');
    }
    if (!_pattern.hasMatch(normalized)) {
      return const InvalidSchoolEmail('Cette adresse e-mail est invalide.');
    }
    final List<String> parts = normalized.split('@');
    final String domain = parts.length == 2 ? parts.last : '';
    final String expected = allowedDomain.trim().toLowerCase().replaceAll('@', '');
    if (expected.isNotEmpty && domain != expected) {
      return InvalidSchoolEmail('Utilise ton adresse @$expected.');
    }
    return ValidSchoolEmail(SchoolEmail._(normalized));
  }

  static final RegExp _pattern = RegExp(
    r'^[a-z0-9](?:[a-z0-9._%+-]{0,62}[a-z0-9])?@[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?(?:\.[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?)+$',
  );

  @override
  String toString() => value;

  @override
  bool operator ==(Object other) => other is SchoolEmail && other.value == value;

  @override
  int get hashCode => value.hashCode;
}

sealed class SchoolEmailValidation {
  const SchoolEmailValidation();
}

final class ValidSchoolEmail extends SchoolEmailValidation {
  const ValidSchoolEmail(this.email);

  final SchoolEmail email;
}

final class InvalidSchoolEmail extends SchoolEmailValidation {
  const InvalidSchoolEmail(this.message);

  final String message;
}
