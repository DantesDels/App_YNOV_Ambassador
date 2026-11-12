// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_challenge_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OtpChallengeDto {

 String get id; String get email; DateTime get expiresAt; DateTime get resendAvailableAt; String get channel; int get attemptsRemaining;
/// Create a copy of OtpChallengeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpChallengeDtoCopyWith<OtpChallengeDto> get copyWith => _$OtpChallengeDtoCopyWithImpl<OtpChallengeDto>(this as OtpChallengeDto, _$identity);

  /// Serializes this OtpChallengeDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OtpChallengeDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpChallengeDto&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&(identical(other.resendAvailableAt, _this.resendAvailableAt) || other.resendAvailableAt == _this.resendAvailableAt)&&(identical(other.channel, _this.channel) || other.channel == _this.channel)&&(identical(other.attemptsRemaining, _this.attemptsRemaining) || other.attemptsRemaining == _this.attemptsRemaining));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OtpChallengeDto;
  return Object.hash(runtimeType,_this.id,_this.email,_this.expiresAt,_this.resendAvailableAt,_this.channel,_this.attemptsRemaining);
}

@override
String toString() {
  final _this = this as OtpChallengeDto;
  return 'OtpChallengeDto(id: ${_this.id}, email: ${_this.email}, expiresAt: ${_this.expiresAt}, resendAvailableAt: ${_this.resendAvailableAt}, channel: ${_this.channel}, attemptsRemaining: ${_this.attemptsRemaining})';
}


}

/// @nodoc
abstract mixin class $OtpChallengeDtoCopyWith<$Res>  {
  factory $OtpChallengeDtoCopyWith(OtpChallengeDto value, $Res Function(OtpChallengeDto) _then) = _$OtpChallengeDtoCopyWithImpl;
@useResult
$Res call({
 String id, String email, DateTime expiresAt, DateTime resendAvailableAt, String channel, int attemptsRemaining
});




}
/// @nodoc
class _$OtpChallengeDtoCopyWithImpl<$Res>
    implements $OtpChallengeDtoCopyWith<$Res> {
  _$OtpChallengeDtoCopyWithImpl(this._self, this._then);

  final OtpChallengeDto _self;
  final $Res Function(OtpChallengeDto) _then;

/// Create a copy of OtpChallengeDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? expiresAt = null,Object? resendAvailableAt = null,Object? channel = null,Object? attemptsRemaining = null,}) {
  return _then(OtpChallengeDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,resendAvailableAt: null == resendAvailableAt ? _self.resendAvailableAt : resendAvailableAt // ignore: cast_nullable_to_non_nullable
as DateTime,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String,attemptsRemaining: null == attemptsRemaining ? _self.attemptsRemaining : attemptsRemaining // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OtpChallengeDto].
extension OtpChallengeDtoPatterns on OtpChallengeDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtpChallengeDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtpChallengeDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtpChallengeDto value)  $default,){
final _that = this;
switch (_that) {
case _OtpChallengeDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtpChallengeDto value)?  $default,){
final _that = this;
switch (_that) {
case _OtpChallengeDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  DateTime expiresAt,  DateTime resendAvailableAt,  String channel,  int attemptsRemaining)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtpChallengeDto() when $default != null:
return $default(_that.id,_that.email,_that.expiresAt,_that.resendAvailableAt,_that.channel,_that.attemptsRemaining);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  DateTime expiresAt,  DateTime resendAvailableAt,  String channel,  int attemptsRemaining)  $default,) {final _that = this;
switch (_that) {
case _OtpChallengeDto():
return $default(_that.id,_that.email,_that.expiresAt,_that.resendAvailableAt,_that.channel,_that.attemptsRemaining);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  DateTime expiresAt,  DateTime resendAvailableAt,  String channel,  int attemptsRemaining)?  $default,) {final _that = this;
switch (_that) {
case _OtpChallengeDto() when $default != null:
return $default(_that.id,_that.email,_that.expiresAt,_that.resendAvailableAt,_that.channel,_that.attemptsRemaining);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _OtpChallengeDto implements OtpChallengeDto {
  const _OtpChallengeDto({required this.id, required this.email, required this.expiresAt, required this.resendAvailableAt, this.channel = 'email', this.attemptsRemaining = 5});
  factory _OtpChallengeDto.fromJson(Map<String, dynamic> json) => _$OtpChallengeDtoFromJson(json);

@override final  String id;
@override final  String email;
@override final  DateTime expiresAt;
@override final  DateTime resendAvailableAt;
@override@JsonKey() final  String channel;
@override@JsonKey() final  int attemptsRemaining;

/// Create a copy of OtpChallengeDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpChallengeDtoCopyWith<_OtpChallengeDto> get copyWith => __$OtpChallengeDtoCopyWithImpl<_OtpChallengeDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OtpChallengeDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpChallengeDto&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.resendAvailableAt, resendAvailableAt) || other.resendAvailableAt == resendAvailableAt)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.attemptsRemaining, attemptsRemaining) || other.attemptsRemaining == attemptsRemaining));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,email,expiresAt,resendAvailableAt,channel,attemptsRemaining);
}

@override
String toString() {
    return 'OtpChallengeDto(id: $id, email: $email, expiresAt: $expiresAt, resendAvailableAt: $resendAvailableAt, channel: $channel, attemptsRemaining: $attemptsRemaining)';
}


}

/// @nodoc
abstract mixin class _$OtpChallengeDtoCopyWith<$Res> implements $OtpChallengeDtoCopyWith<$Res> {
  factory _$OtpChallengeDtoCopyWith(_OtpChallengeDto value, $Res Function(_OtpChallengeDto) _then) = __$OtpChallengeDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, DateTime expiresAt, DateTime resendAvailableAt, String channel, int attemptsRemaining
});




}
/// @nodoc
class __$OtpChallengeDtoCopyWithImpl<$Res>
    implements _$OtpChallengeDtoCopyWith<$Res> {
  __$OtpChallengeDtoCopyWithImpl(this._self, this._then);

  final _OtpChallengeDto _self;
  final $Res Function(_OtpChallengeDto) _then;

/// Create a copy of OtpChallengeDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? expiresAt = null,Object? resendAvailableAt = null,Object? channel = null,Object? attemptsRemaining = null,}) {
  return _then(_OtpChallengeDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,resendAvailableAt: null == resendAvailableAt ? _self.resendAvailableAt : resendAvailableAt // ignore: cast_nullable_to_non_nullable
as DateTime,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String,attemptsRemaining: null == attemptsRemaining ? _self.attemptsRemaining : attemptsRemaining // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
