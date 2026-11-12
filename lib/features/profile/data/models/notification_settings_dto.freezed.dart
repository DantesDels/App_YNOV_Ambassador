// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationSettingsDto {

 bool get pushEnabled; bool get friendActivity; bool get eventReminders; bool get squadAlerts; bool get smartAlerts; bool get discreetMode; int get quietHoursStart; int get quietHoursEnd; bool get locationBasedAlerts;
/// Create a copy of NotificationSettingsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationSettingsDtoCopyWith<NotificationSettingsDto> get copyWith => _$NotificationSettingsDtoCopyWithImpl<NotificationSettingsDto>(this as NotificationSettingsDto, _$identity);

  /// Serializes this NotificationSettingsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as NotificationSettingsDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationSettingsDto&&(identical(other.pushEnabled, _this.pushEnabled) || other.pushEnabled == _this.pushEnabled)&&(identical(other.friendActivity, _this.friendActivity) || other.friendActivity == _this.friendActivity)&&(identical(other.eventReminders, _this.eventReminders) || other.eventReminders == _this.eventReminders)&&(identical(other.squadAlerts, _this.squadAlerts) || other.squadAlerts == _this.squadAlerts)&&(identical(other.smartAlerts, _this.smartAlerts) || other.smartAlerts == _this.smartAlerts)&&(identical(other.discreetMode, _this.discreetMode) || other.discreetMode == _this.discreetMode)&&(identical(other.quietHoursStart, _this.quietHoursStart) || other.quietHoursStart == _this.quietHoursStart)&&(identical(other.quietHoursEnd, _this.quietHoursEnd) || other.quietHoursEnd == _this.quietHoursEnd)&&(identical(other.locationBasedAlerts, _this.locationBasedAlerts) || other.locationBasedAlerts == _this.locationBasedAlerts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as NotificationSettingsDto;
  return Object.hash(runtimeType,_this.pushEnabled,_this.friendActivity,_this.eventReminders,_this.squadAlerts,_this.smartAlerts,_this.discreetMode,_this.quietHoursStart,_this.quietHoursEnd,_this.locationBasedAlerts);
}

@override
String toString() {
  final _this = this as NotificationSettingsDto;
  return 'NotificationSettingsDto(pushEnabled: ${_this.pushEnabled}, friendActivity: ${_this.friendActivity}, eventReminders: ${_this.eventReminders}, squadAlerts: ${_this.squadAlerts}, smartAlerts: ${_this.smartAlerts}, discreetMode: ${_this.discreetMode}, quietHoursStart: ${_this.quietHoursStart}, quietHoursEnd: ${_this.quietHoursEnd}, locationBasedAlerts: ${_this.locationBasedAlerts})';
}


}

/// @nodoc
abstract mixin class $NotificationSettingsDtoCopyWith<$Res>  {
  factory $NotificationSettingsDtoCopyWith(NotificationSettingsDto value, $Res Function(NotificationSettingsDto) _then) = _$NotificationSettingsDtoCopyWithImpl;
@useResult
$Res call({
 bool pushEnabled, bool friendActivity, bool eventReminders, bool squadAlerts, bool smartAlerts, bool discreetMode, int quietHoursStart, int quietHoursEnd, bool locationBasedAlerts
});




}
/// @nodoc
class _$NotificationSettingsDtoCopyWithImpl<$Res>
    implements $NotificationSettingsDtoCopyWith<$Res> {
  _$NotificationSettingsDtoCopyWithImpl(this._self, this._then);

  final NotificationSettingsDto _self;
  final $Res Function(NotificationSettingsDto) _then;

/// Create a copy of NotificationSettingsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pushEnabled = null,Object? friendActivity = null,Object? eventReminders = null,Object? squadAlerts = null,Object? smartAlerts = null,Object? discreetMode = null,Object? quietHoursStart = null,Object? quietHoursEnd = null,Object? locationBasedAlerts = null,}) {
  return _then(NotificationSettingsDto(
pushEnabled: null == pushEnabled ? _self.pushEnabled : pushEnabled // ignore: cast_nullable_to_non_nullable
as bool,friendActivity: null == friendActivity ? _self.friendActivity : friendActivity // ignore: cast_nullable_to_non_nullable
as bool,eventReminders: null == eventReminders ? _self.eventReminders : eventReminders // ignore: cast_nullable_to_non_nullable
as bool,squadAlerts: null == squadAlerts ? _self.squadAlerts : squadAlerts // ignore: cast_nullable_to_non_nullable
as bool,smartAlerts: null == smartAlerts ? _self.smartAlerts : smartAlerts // ignore: cast_nullable_to_non_nullable
as bool,discreetMode: null == discreetMode ? _self.discreetMode : discreetMode // ignore: cast_nullable_to_non_nullable
as bool,quietHoursStart: null == quietHoursStart ? _self.quietHoursStart : quietHoursStart // ignore: cast_nullable_to_non_nullable
as int,quietHoursEnd: null == quietHoursEnd ? _self.quietHoursEnd : quietHoursEnd // ignore: cast_nullable_to_non_nullable
as int,locationBasedAlerts: null == locationBasedAlerts ? _self.locationBasedAlerts : locationBasedAlerts // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationSettingsDto].
extension NotificationSettingsDtoPatterns on NotificationSettingsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationSettingsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationSettingsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationSettingsDto value)  $default,){
final _that = this;
switch (_that) {
case _NotificationSettingsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationSettingsDto value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationSettingsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool pushEnabled,  bool friendActivity,  bool eventReminders,  bool squadAlerts,  bool smartAlerts,  bool discreetMode,  int quietHoursStart,  int quietHoursEnd,  bool locationBasedAlerts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationSettingsDto() when $default != null:
return $default(_that.pushEnabled,_that.friendActivity,_that.eventReminders,_that.squadAlerts,_that.smartAlerts,_that.discreetMode,_that.quietHoursStart,_that.quietHoursEnd,_that.locationBasedAlerts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool pushEnabled,  bool friendActivity,  bool eventReminders,  bool squadAlerts,  bool smartAlerts,  bool discreetMode,  int quietHoursStart,  int quietHoursEnd,  bool locationBasedAlerts)  $default,) {final _that = this;
switch (_that) {
case _NotificationSettingsDto():
return $default(_that.pushEnabled,_that.friendActivity,_that.eventReminders,_that.squadAlerts,_that.smartAlerts,_that.discreetMode,_that.quietHoursStart,_that.quietHoursEnd,_that.locationBasedAlerts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool pushEnabled,  bool friendActivity,  bool eventReminders,  bool squadAlerts,  bool smartAlerts,  bool discreetMode,  int quietHoursStart,  int quietHoursEnd,  bool locationBasedAlerts)?  $default,) {final _that = this;
switch (_that) {
case _NotificationSettingsDto() when $default != null:
return $default(_that.pushEnabled,_that.friendActivity,_that.eventReminders,_that.squadAlerts,_that.smartAlerts,_that.discreetMode,_that.quietHoursStart,_that.quietHoursEnd,_that.locationBasedAlerts);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _NotificationSettingsDto implements NotificationSettingsDto {
  const _NotificationSettingsDto({this.pushEnabled = true, this.friendActivity = true, this.eventReminders = true, this.squadAlerts = true, this.smartAlerts = true, this.discreetMode = false, this.quietHoursStart = 0, this.quietHoursEnd = 7, this.locationBasedAlerts = true});
  factory _NotificationSettingsDto.fromJson(Map<String, dynamic> json) => _$NotificationSettingsDtoFromJson(json);

@override@JsonKey() final  bool pushEnabled;
@override@JsonKey() final  bool friendActivity;
@override@JsonKey() final  bool eventReminders;
@override@JsonKey() final  bool squadAlerts;
@override@JsonKey() final  bool smartAlerts;
@override@JsonKey() final  bool discreetMode;
@override@JsonKey() final  int quietHoursStart;
@override@JsonKey() final  int quietHoursEnd;
@override@JsonKey() final  bool locationBasedAlerts;

/// Create a copy of NotificationSettingsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationSettingsDtoCopyWith<_NotificationSettingsDto> get copyWith => __$NotificationSettingsDtoCopyWithImpl<_NotificationSettingsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationSettingsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationSettingsDto&&(identical(other.pushEnabled, pushEnabled) || other.pushEnabled == pushEnabled)&&(identical(other.friendActivity, friendActivity) || other.friendActivity == friendActivity)&&(identical(other.eventReminders, eventReminders) || other.eventReminders == eventReminders)&&(identical(other.squadAlerts, squadAlerts) || other.squadAlerts == squadAlerts)&&(identical(other.smartAlerts, smartAlerts) || other.smartAlerts == smartAlerts)&&(identical(other.discreetMode, discreetMode) || other.discreetMode == discreetMode)&&(identical(other.quietHoursStart, quietHoursStart) || other.quietHoursStart == quietHoursStart)&&(identical(other.quietHoursEnd, quietHoursEnd) || other.quietHoursEnd == quietHoursEnd)&&(identical(other.locationBasedAlerts, locationBasedAlerts) || other.locationBasedAlerts == locationBasedAlerts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,pushEnabled,friendActivity,eventReminders,squadAlerts,smartAlerts,discreetMode,quietHoursStart,quietHoursEnd,locationBasedAlerts);
}

@override
String toString() {
    return 'NotificationSettingsDto(pushEnabled: $pushEnabled, friendActivity: $friendActivity, eventReminders: $eventReminders, squadAlerts: $squadAlerts, smartAlerts: $smartAlerts, discreetMode: $discreetMode, quietHoursStart: $quietHoursStart, quietHoursEnd: $quietHoursEnd, locationBasedAlerts: $locationBasedAlerts)';
}


}

/// @nodoc
abstract mixin class _$NotificationSettingsDtoCopyWith<$Res> implements $NotificationSettingsDtoCopyWith<$Res> {
  factory _$NotificationSettingsDtoCopyWith(_NotificationSettingsDto value, $Res Function(_NotificationSettingsDto) _then) = __$NotificationSettingsDtoCopyWithImpl;
@override @useResult
$Res call({
 bool pushEnabled, bool friendActivity, bool eventReminders, bool squadAlerts, bool smartAlerts, bool discreetMode, int quietHoursStart, int quietHoursEnd, bool locationBasedAlerts
});




}
/// @nodoc
class __$NotificationSettingsDtoCopyWithImpl<$Res>
    implements _$NotificationSettingsDtoCopyWith<$Res> {
  __$NotificationSettingsDtoCopyWithImpl(this._self, this._then);

  final _NotificationSettingsDto _self;
  final $Res Function(_NotificationSettingsDto) _then;

/// Create a copy of NotificationSettingsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pushEnabled = null,Object? friendActivity = null,Object? eventReminders = null,Object? squadAlerts = null,Object? smartAlerts = null,Object? discreetMode = null,Object? quietHoursStart = null,Object? quietHoursEnd = null,Object? locationBasedAlerts = null,}) {
  return _then(_NotificationSettingsDto(
pushEnabled: null == pushEnabled ? _self.pushEnabled : pushEnabled // ignore: cast_nullable_to_non_nullable
as bool,friendActivity: null == friendActivity ? _self.friendActivity : friendActivity // ignore: cast_nullable_to_non_nullable
as bool,eventReminders: null == eventReminders ? _self.eventReminders : eventReminders // ignore: cast_nullable_to_non_nullable
as bool,squadAlerts: null == squadAlerts ? _self.squadAlerts : squadAlerts // ignore: cast_nullable_to_non_nullable
as bool,smartAlerts: null == smartAlerts ? _self.smartAlerts : smartAlerts // ignore: cast_nullable_to_non_nullable
as bool,discreetMode: null == discreetMode ? _self.discreetMode : discreetMode // ignore: cast_nullable_to_non_nullable
as bool,quietHoursStart: null == quietHoursStart ? _self.quietHoursStart : quietHoursStart // ignore: cast_nullable_to_non_nullable
as int,quietHoursEnd: null == quietHoursEnd ? _self.quietHoursEnd : quietHoursEnd // ignore: cast_nullable_to_non_nullable
as int,locationBasedAlerts: null == locationBasedAlerts ? _self.locationBasedAlerts : locationBasedAlerts // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
