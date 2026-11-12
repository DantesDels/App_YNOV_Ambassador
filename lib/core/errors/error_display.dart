import 'app_exception.dart';
import 'failure_mapper.dart';

/// Converts anything thrown by a provider into a user-facing French message.
String userMessageOf(Object? error) {
  if (error == null) {
    return 'Une erreur inattendue est survenue.';
  }
  if (error is FailureException) {
    return error.failure.userMessage;
  }
  return FailureMapper.from(error).userMessage;
}
