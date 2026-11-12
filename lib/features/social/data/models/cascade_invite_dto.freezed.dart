// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cascade_invite_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CascadeInviteDto {

 String get eventId; String get eventTitle; String get referrerId; String get shareUrl; String get shareMessage; DateTime? get expiresAt; int get squadSeats; int get invitedCount; bool get squadDiscountUnlocked; String? get discountLabel;
/// Create a copy of CascadeInviteDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CascadeInviteDtoCopyWith<CascadeInviteDto> get copyWith => _$CascadeInviteDtoCopyWithImpl<CascadeInviteDto>(this as CascadeInviteDto, _$identity);

  /// Serializes this CascadeInviteDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CascadeInviteDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CascadeInviteDto&&(identical(other.eventId, _this.eventId) || other.eventId == _this.eventId)&&(identical(other.eventTitle, _this.eventTitle) || other.eventTitle == _this.eventTitle)&&(identical(other.referrerId, _this.referrerId) || other.referrerId == _this.referrerId)&&(identical(other.shareUrl, _this.shareUrl) || other.shareUrl == _this.shareUrl)&&(identical(other.shareMessage, _this.shareMessage) || other.shareMessage == _this.shareMessage)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&(identical(other.squadSeats, _this.squadSeats) || other.squadSeats == _this.squadSeats)&&(identical(other.invitedCount, _this.invitedCount) || other.invitedCount == _this.invitedCount)&&(identical(other.squadDiscountUnlocked, _this.squadDiscountUnlocked) || other.squadDiscountUnlocked == _this.squadDiscountUnlocked)&&(identical(other.discountLabel, _this.discountLabel) || other.discountLabel == _this.discountLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CascadeInviteDto;
  return Object.hash(runtimeType,_this.eventId,_this.eventTitle,_this.referrerId,_this.shareUrl,_this.shareMessage,_this.expiresAt,_this.squadSeats,_this.invitedCount,_this.squadDiscountUnlocked,_this.discountLabel);
}

@override
String toString() {
  final _this = this as CascadeInviteDto;
  return 'CascadeInviteDto(eventId: ${_this.eventId}, eventTitle: ${_this.eventTitle}, referrerId: ${_this.referrerId}, shareUrl: ${_this.shareUrl}, shareMessage: ${_this.shareMessage}, expiresAt: ${_this.expiresAt}, squadSeats: ${_this.squadSeats}, invitedCount: ${_this.invitedCount}, squadDiscountUnlocked: ${_this.squadDiscountUnlocked}, discountLabel: ${_this.discountLabel})';
}


}

/// @nodoc
abstract mixin class $CascadeInviteDtoCopyWith<$Res>  {
  factory $CascadeInviteDtoCopyWith(CascadeInviteDto value, $Res Function(CascadeInviteDto) _then) = _$CascadeInviteDtoCopyWithImpl;
@useResult
$Res call({
 String eventId, String eventTitle, String referrerId, String shareUrl, String shareMessage, DateTime? expiresAt, int squadSeats, int invitedCount, bool squadDiscountUnlocked, String? discountLabel
});




}
/// @nodoc
class _$CascadeInviteDtoCopyWithImpl<$Res>
    implements $CascadeInviteDtoCopyWith<$Res> {
  _$CascadeInviteDtoCopyWithImpl(this._self, this._then);

  final CascadeInviteDto _self;
  final $Res Function(CascadeInviteDto) _then;

/// Create a copy of CascadeInviteDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? eventTitle = null,Object? referrerId = null,Object? shareUrl = null,Object? shareMessage = null,Object? expiresAt = freezed,Object? squadSeats = null,Object? invitedCount = null,Object? squadDiscountUnlocked = null,Object? discountLabel = freezed,}) {
  return _then(CascadeInviteDto(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,referrerId: null == referrerId ? _self.referrerId : referrerId // ignore: cast_nullable_to_non_nullable
as String,shareUrl: null == shareUrl ? _self.shareUrl : shareUrl // ignore: cast_nullable_to_non_nullable
as String,shareMessage: null == shareMessage ? _self.shareMessage : shareMessage // ignore: cast_nullable_to_non_nullable
as String,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,squadSeats: null == squadSeats ? _self.squadSeats : squadSeats // ignore: cast_nullable_to_non_nullable
as int,invitedCount: null == invitedCount ? _self.invitedCount : invitedCount // ignore: cast_nullable_to_non_nullable
as int,squadDiscountUnlocked: null == squadDiscountUnlocked ? _self.squadDiscountUnlocked : squadDiscountUnlocked // ignore: cast_nullable_to_non_nullable
as bool,discountLabel: freezed == discountLabel ? _self.discountLabel : discountLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CascadeInviteDto].
extension CascadeInviteDtoPatterns on CascadeInviteDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CascadeInviteDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CascadeInviteDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CascadeInviteDto value)  $default,){
final _that = this;
switch (_that) {
case _CascadeInviteDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CascadeInviteDto value)?  $default,){
final _that = this;
switch (_that) {
case _CascadeInviteDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String eventId,  String eventTitle,  String referrerId,  String shareUrl,  String shareMessage,  DateTime? expiresAt,  int squadSeats,  int invitedCount,  bool squadDiscountUnlocked,  String? discountLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CascadeInviteDto() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.referrerId,_that.shareUrl,_that.shareMessage,_that.expiresAt,_that.squadSeats,_that.invitedCount,_that.squadDiscountUnlocked,_that.discountLabel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String eventId,  String eventTitle,  String referrerId,  String shareUrl,  String shareMessage,  DateTime? expiresAt,  int squadSeats,  int invitedCount,  bool squadDiscountUnlocked,  String? discountLabel)  $default,) {final _that = this;
switch (_that) {
case _CascadeInviteDto():
return $default(_that.eventId,_that.eventTitle,_that.referrerId,_that.shareUrl,_that.shareMessage,_that.expiresAt,_that.squadSeats,_that.invitedCount,_that.squadDiscountUnlocked,_that.discountLabel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String eventId,  String eventTitle,  String referrerId,  String shareUrl,  String shareMessage,  DateTime? expiresAt,  int squadSeats,  int invitedCount,  bool squadDiscountUnlocked,  String? discountLabel)?  $default,) {final _that = this;
switch (_that) {
case _CascadeInviteDto() when $default != null:
return $default(_that.eventId,_that.eventTitle,_that.referrerId,_that.shareUrl,_that.shareMessage,_that.expiresAt,_that.squadSeats,_that.invitedCount,_that.squadDiscountUnlocked,_that.discountLabel);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _CascadeInviteDto implements CascadeInviteDto {
  const _CascadeInviteDto({required this.eventId, required this.eventTitle, required this.referrerId, required this.shareUrl, required this.shareMessage, this.expiresAt, this.squadSeats = 3, this.invitedCount = 0, this.squadDiscountUnlocked = false, this.discountLabel});
  factory _CascadeInviteDto.fromJson(Map<String, dynamic> json) => _$CascadeInviteDtoFromJson(json);

@override final  String eventId;
@override final  String eventTitle;
@override final  String referrerId;
@override final  String shareUrl;
@override final  String shareMessage;
@override final  DateTime? expiresAt;
@override@JsonKey() final  int squadSeats;
@override@JsonKey() final  int invitedCount;
@override@JsonKey() final  bool squadDiscountUnlocked;
@override final  String? discountLabel;

/// Create a copy of CascadeInviteDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CascadeInviteDtoCopyWith<_CascadeInviteDto> get copyWith => __$CascadeInviteDtoCopyWithImpl<_CascadeInviteDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CascadeInviteDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CascadeInviteDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.referrerId, referrerId) || other.referrerId == referrerId)&&(identical(other.shareUrl, shareUrl) || other.shareUrl == shareUrl)&&(identical(other.shareMessage, shareMessage) || other.shareMessage == shareMessage)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.squadSeats, squadSeats) || other.squadSeats == squadSeats)&&(identical(other.invitedCount, invitedCount) || other.invitedCount == invitedCount)&&(identical(other.squadDiscountUnlocked, squadDiscountUnlocked) || other.squadDiscountUnlocked == squadDiscountUnlocked)&&(identical(other.discountLabel, discountLabel) || other.discountLabel == discountLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,eventId,eventTitle,referrerId,shareUrl,shareMessage,expiresAt,squadSeats,invitedCount,squadDiscountUnlocked,discountLabel);
}

@override
String toString() {
    return 'CascadeInviteDto(eventId: $eventId, eventTitle: $eventTitle, referrerId: $referrerId, shareUrl: $shareUrl, shareMessage: $shareMessage, expiresAt: $expiresAt, squadSeats: $squadSeats, invitedCount: $invitedCount, squadDiscountUnlocked: $squadDiscountUnlocked, discountLabel: $discountLabel)';
}


}

/// @nodoc
abstract mixin class _$CascadeInviteDtoCopyWith<$Res> implements $CascadeInviteDtoCopyWith<$Res> {
  factory _$CascadeInviteDtoCopyWith(_CascadeInviteDto value, $Res Function(_CascadeInviteDto) _then) = __$CascadeInviteDtoCopyWithImpl;
@override @useResult
$Res call({
 String eventId, String eventTitle, String referrerId, String shareUrl, String shareMessage, DateTime? expiresAt, int squadSeats, int invitedCount, bool squadDiscountUnlocked, String? discountLabel
});




}
/// @nodoc
class __$CascadeInviteDtoCopyWithImpl<$Res>
    implements _$CascadeInviteDtoCopyWith<$Res> {
  __$CascadeInviteDtoCopyWithImpl(this._self, this._then);

  final _CascadeInviteDto _self;
  final $Res Function(_CascadeInviteDto) _then;

/// Create a copy of CascadeInviteDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? eventTitle = null,Object? referrerId = null,Object? shareUrl = null,Object? shareMessage = null,Object? expiresAt = freezed,Object? squadSeats = null,Object? invitedCount = null,Object? squadDiscountUnlocked = null,Object? discountLabel = freezed,}) {
  return _then(_CascadeInviteDto(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,referrerId: null == referrerId ? _self.referrerId : referrerId // ignore: cast_nullable_to_non_nullable
as String,shareUrl: null == shareUrl ? _self.shareUrl : shareUrl // ignore: cast_nullable_to_non_nullable
as String,shareMessage: null == shareMessage ? _self.shareMessage : shareMessage // ignore: cast_nullable_to_non_nullable
as String,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,squadSeats: null == squadSeats ? _self.squadSeats : squadSeats // ignore: cast_nullable_to_non_nullable
as int,invitedCount: null == invitedCount ? _self.invitedCount : invitedCount // ignore: cast_nullable_to_non_nullable
as int,squadDiscountUnlocked: null == squadDiscountUnlocked ? _self.squadDiscountUnlocked : squadDiscountUnlocked // ignore: cast_nullable_to_non_nullable
as bool,discountLabel: freezed == discountLabel ? _self.discountLabel : discountLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
