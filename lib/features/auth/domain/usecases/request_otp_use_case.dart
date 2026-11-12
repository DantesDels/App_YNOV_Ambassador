import 'package:campus_pulse/core/constants/app_config.dart';
import 'package:campus_pulse/core/errors/failure.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/auth/domain/auth_repository.dart';
import 'package:campus_pulse/features/auth/domain/otp_challenge.dart';
import 'package:campus_pulse/features/auth/domain/school_email.dart';

class RequestOtpUseCase {
  const RequestOtpUseCase(this._repository);

  final AuthRepository _repository;

  Future<Result<OtpChallenge>> call(String rawEmail) async {
    final SchoolEmailValidation validation = SchoolEmail.validate(
      rawEmail,
      allowedDomain: AppConfig.schoolEmailDomain,
    );
    return switch (validation) {
      InvalidSchoolEmail(:final String message) => Failed<OtpChallenge>(
        ValidationFailure(message),
      ),
      ValidSchoolEmail(:final SchoolEmail email) => _repository.requestOtp(email),
    };
  }
}
