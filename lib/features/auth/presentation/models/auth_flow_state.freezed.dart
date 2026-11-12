// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_flow_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthFlowState {

 String get email; OtpChallenge? get challenge; bool get isSubmitting; String? get errorMessage;
/// Create a copy of AuthFlowState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthFlowStateCopyWith<AuthFlowState> get copyWith => _$AuthFlowStateCopyWithImpl<AuthFlowState>(this as AuthFlowState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AuthFlowState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFlowState&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.challenge, _this.challenge) || other.challenge == _this.challenge)&&(identical(other.isSubmitting, _this.isSubmitting) || other.isSubmitting == _this.isSubmitting)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage));
}


@override
int get hashCode {
  final _this = this as AuthFlowState;
  return Object.hash(runtimeType,_this.email,_this.challenge,_this.isSubmitting,_this.errorMessage);
}

@override
String toString() {
  final _this = this as AuthFlowState;
  return 'AuthFlowState(email: ${_this.email}, challenge: ${_this.challenge}, isSubmitting: ${_this.isSubmitting}, errorMessage: ${_this.errorMessage})';
}


}

/// @nodoc
abstract mixin class $AuthFlowStateCopyWith<$Res>  {
  factory $AuthFlowStateCopyWith(AuthFlowState value, $Res Function(AuthFlowState) _then) = _$AuthFlowStateCopyWithImpl;
@useResult
$Res call({
 String email, OtpChallenge? challenge, bool isSubmitting, String? errorMessage
});


$OtpChallengeCopyWith<$Res>? get challenge;

}
/// @nodoc
class _$AuthFlowStateCopyWithImpl<$Res>
    implements $AuthFlowStateCopyWith<$Res> {
  _$AuthFlowStateCopyWithImpl(this._self, this._then);

  final AuthFlowState _self;
  final $Res Function(AuthFlowState) _then;

/// Create a copy of AuthFlowState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? challenge = freezed,Object? isSubmitting = null,Object? errorMessage = freezed,}) {
  return _then(AuthFlowState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,challenge: freezed == challenge ? _self.challenge : challenge // ignore: cast_nullable_to_non_nullable
as OtpChallenge?,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AuthFlowState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtpChallengeCopyWith<$Res>? get challenge {
    if (_self.challenge == null) {
    return null;
  }

  return $OtpChallengeCopyWith<$Res>(_self.challenge!, (value) {
    return _then(_self.copyWith(challenge: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthFlowState].
extension AuthFlowStatePatterns on AuthFlowState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthFlowState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthFlowState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthFlowState value)  $default,){
final _that = this;
switch (_that) {
case _AuthFlowState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthFlowState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthFlowState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  OtpChallenge? challenge,  bool isSubmitting,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthFlowState() when $default != null:
return $default(_that.email,_that.challenge,_that.isSubmitting,_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  OtpChallenge? challenge,  bool isSubmitting,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _AuthFlowState():
return $default(_that.email,_that.challenge,_that.isSubmitting,_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  OtpChallenge? challenge,  bool isSubmitting,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _AuthFlowState() when $default != null:
return $default(_that.email,_that.challenge,_that.isSubmitting,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _AuthFlowState extends AuthFlowState {
  const _AuthFlowState({this.email = '', this.challenge, this.isSubmitting = false, this.errorMessage}): super._();
  

@override@JsonKey() final  String email;
@override final  OtpChallenge? challenge;
@override@JsonKey() final  bool isSubmitting;
@override final  String? errorMessage;

/// Create a copy of AuthFlowState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthFlowStateCopyWith<_AuthFlowState> get copyWith => __$AuthFlowStateCopyWithImpl<_AuthFlowState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthFlowState&&(identical(other.email, email) || other.email == email)&&(identical(other.challenge, challenge) || other.challenge == challenge)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,email,challenge,isSubmitting,errorMessage);
}

@override
String toString() {
    return 'AuthFlowState(email: $email, challenge: $challenge, isSubmitting: $isSubmitting, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$AuthFlowStateCopyWith<$Res> implements $AuthFlowStateCopyWith<$Res> {
  factory _$AuthFlowStateCopyWith(_AuthFlowState value, $Res Function(_AuthFlowState) _then) = __$AuthFlowStateCopyWithImpl;
@override @useResult
$Res call({
 String email, OtpChallenge? challenge, bool isSubmitting, String? errorMessage
});


@override $OtpChallengeCopyWith<$Res>? get challenge;

}
/// @nodoc
class __$AuthFlowStateCopyWithImpl<$Res>
    implements _$AuthFlowStateCopyWith<$Res> {
  __$AuthFlowStateCopyWithImpl(this._self, this._then);

  final _AuthFlowState _self;
  final $Res Function(_AuthFlowState) _then;

/// Create a copy of AuthFlowState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? challenge = freezed,Object? isSubmitting = null,Object? errorMessage = freezed,}) {
  return _then(_AuthFlowState(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,challenge: freezed == challenge ? _self.challenge : challenge // ignore: cast_nullable_to_non_nullable
as OtpChallenge?,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AuthFlowState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtpChallengeCopyWith<$Res>? get challenge {
    if (_self.challenge == null) {
    return null;
  }

  return $OtpChallengeCopyWith<$Res>(_self.challenge!, (value) {
    return _then(_self.copyWith(challenge: value));
  });
}
}

// dart format on
