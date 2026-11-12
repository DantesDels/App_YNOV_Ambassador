import 'app_exception.dart';
import 'failure.dart';

/// Minimal functional result used between the data, domain and presentation
/// layers. It avoids leaking exceptions through the UI while staying explicit.
sealed class Result<T> {
  const Result();

  const factory Result.success(T value) = Success<T>;
  const factory Result.failure(Failure failure) = Failed<T>;

  bool get isSuccess;
  T? get valueOrNull;
  Failure? get failureOrNull;

  R fold<R>({
    required R Function(T value) onSuccess,
    required R Function(Failure failure) onFailure,
  });

  T getOrThrow() {
    final Result<T> self = this;
    if (self is Success<T>) {
      return self.value;
    }
    throw FailureException((self as Failed<T>).failure);
  }

  Result<R> map<R>(R Function(T value) transform) {
    final Result<T> self = this;
    if (self is Success<T>) {
      return Success<R>(transform(self.value));
    }
    return Failed<R>((self as Failed<T>).failure);
  }
}

final class Success<T> extends Result<T> {
  const Success(this.value);

  final T value;

  @override
  bool get isSuccess => true;

  @override
  T? get valueOrNull => value;

  @override
  Failure? get failureOrNull => null;

  @override
  R fold<R>({
    required R Function(T value) onSuccess,
    required R Function(Failure failure) onFailure,
  }) => onSuccess(value);
}

final class Failed<T> extends Result<T> {
  const Failed(this.failure);

  final Failure failure;

  @override
  bool get isSuccess => false;

  @override
  T? get valueOrNull => null;

  @override
  Failure? get failureOrNull => failure;

  @override
  R fold<R>({
    required R Function(T value) onSuccess,
    required R Function(Failure failure) onFailure,
  }) => onFailure(failure);
}
