import 'package:campus_pulse/core/constants/app_config.dart';
import 'package:campus_pulse/features/auth/domain/school_email.dart';

/// Gives instant feedback while typing; the backend re-validates the domain.
class VerifySchoolEmailUseCase {
  const VerifySchoolEmailUseCase();

  SchoolEmailValidation call(String raw) {
    return SchoolEmail.validate(raw, allowedDomain: AppConfig.schoolEmailDomain);
  }
}
