// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_challenge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OtpChallenge {

 String get id; String get email; DateTime get expiresAt; DateTime get resendAvailableAt; OtpDeliveryChannel get channel; int get attemptsRemaining;
/// Create a copy of OtpChallenge
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpChallengeCopyWith<OtpChallenge> get copyWith => _$OtpChallengeCopyWithImpl<OtpChallenge>(this as OtpChallenge, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OtpChallenge;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpChallenge&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&(identical(other.resendAvailableAt, _this.resendAvailableAt) || other.resendAvailableAt == _this.resendAvailableAt)&&(identical(other.channel, _this.channel) || other.channel == _this.channel)&&(identical(other.attemptsRemaining, _this.attemptsRemaining) || other.attemptsRemaining == _this.attemptsRemaining));
}


@override
int get hashCode {
  final _this = this as OtpChallenge;
  return Object.hash(runtimeType,_this.id,_this.email,_this.expiresAt,_this.resendAvailableAt,_this.channel,_this.attemptsRemaining);
}

@override
String toString() {
  final _this = this as OtpChallenge;
  return 'OtpChallenge(id: ${_this.id}, email: ${_this.email}, expiresAt: ${_this.expiresAt}, resendAvailableAt: ${_this.resendAvailableAt}, channel: ${_this.channel}, attemptsRemaining: ${_this.attemptsRemaining})';
}


}

/// @nodoc
abstract mixin class $OtpChallengeCopyWith<$Res>  {
  factory $OtpChallengeCopyWith(OtpChallenge value, $Res Function(OtpChallenge) _then) = _$OtpChallengeCopyWithImpl;
@useResult
$Res call({
 String id, String email, DateTime expiresAt, DateTime resendAvailableAt, OtpDeliveryChannel channel, int attemptsRemaining
});




}
/// @nodoc
class _$OtpChallengeCopyWithImpl<$Res>
    implements $OtpChallengeCopyWith<$Res> {
  _$OtpChallengeCopyWithImpl(this._self, this._then);

  final OtpChallenge _self;
  final $Res Function(OtpChallenge) _then;

/// Create a copy of OtpChallenge
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? expiresAt = null,Object? resendAvailableAt = null,Object? channel = null,Object? attemptsRemaining = null,}) {
  return _then(OtpChallenge(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,resendAvailableAt: null == resendAvailableAt ? _self.resendAvailableAt : resendAvailableAt // ignore: cast_nullable_to_non_nullable
as DateTime,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as OtpDeliveryChannel,attemptsRemaining: null == attemptsRemaining ? _self.attemptsRemaining : attemptsRemaining // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OtpChallenge].
extension OtpChallengePatterns on OtpChallenge {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtpChallenge value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtpChallenge() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtpChallenge value)  $default,){
final _that = this;
switch (_that) {
case _OtpChallenge():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtpChallenge value)?  $default,){
final _that = this;
switch (_that) {
case _OtpChallenge() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  DateTime expiresAt,  DateTime resendAvailableAt,  OtpDeliveryChannel channel,  int attemptsRemaining)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtpChallenge() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  DateTime expiresAt,  DateTime resendAvailableAt,  OtpDeliveryChannel channel,  int attemptsRemaining)  $default,) {final _that = this;
switch (_that) {
case _OtpChallenge():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  DateTime expiresAt,  DateTime resendAvailableAt,  OtpDeliveryChannel channel,  int attemptsRemaining)?  $default,) {final _that = this;
switch (_that) {
case _OtpChallenge() when $default != null:
return $default(_that.id,_that.email,_that.expiresAt,_that.resendAvailableAt,_that.channel,_that.attemptsRemaining);case _:
  return null;

}
}

}

/// @nodoc


class _OtpChallenge extends OtpChallenge {
  const _OtpChallenge({required this.id, required this.email, required this.expiresAt, required this.resendAvailableAt, this.channel = OtpDeliveryChannel.email, this.attemptsRemaining = 5}): super._();
  

@override final  String id;
@override final  String email;
@override final  DateTime expiresAt;
@override final  DateTime resendAvailableAt;
@override@JsonKey() final  OtpDeliveryChannel channel;
@override@JsonKey() final  int attemptsRemaining;

/// Create a copy of OtpChallenge
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpChallengeCopyWith<_OtpChallenge> get copyWith => __$OtpChallengeCopyWithImpl<_OtpChallenge>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpChallenge&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.resendAvailableAt, resendAvailableAt) || other.resendAvailableAt == resendAvailableAt)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.attemptsRemaining, attemptsRemaining) || other.attemptsRemaining == attemptsRemaining));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,email,expiresAt,resendAvailableAt,channel,attemptsRemaining);
}

@override
String toString() {
    return 'OtpChallenge(id: $id, email: $email, expiresAt: $expiresAt, resendAvailableAt: $resendAvailableAt, channel: $channel, attemptsRemaining: $attemptsRemaining)';
}


}

/// @nodoc
abstract mixin class _$OtpChallengeCopyWith<$Res> implements $OtpChallengeCopyWith<$Res> {
  factory _$OtpChallengeCopyWith(_OtpChallenge value, $Res Function(_OtpChallenge) _then) = __$OtpChallengeCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, DateTime expiresAt, DateTime resendAvailableAt, OtpDeliveryChannel channel, int attemptsRemaining
});




}
/// @nodoc
class __$OtpChallengeCopyWithImpl<$Res>
    implements _$OtpChallengeCopyWith<$Res> {
  __$OtpChallengeCopyWithImpl(this._self, this._then);

  final _OtpChallenge _self;
  final $Res Function(_OtpChallenge) _then;

/// Create a copy of OtpChallenge
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? expiresAt = null,Object? resendAvailableAt = null,Object? channel = null,Object? attemptsRemaining = null,}) {
  return _then(_OtpChallenge(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,resendAvailableAt: null == resendAvailableAt ? _self.resendAvailableAt : resendAvailableAt // ignore: cast_nullable_to_non_nullable
as DateTime,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as OtpDeliveryChannel,attemptsRemaining: null == attemptsRemaining ? _self.attemptsRemaining : attemptsRemaining // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
