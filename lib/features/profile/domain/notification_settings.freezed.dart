// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationSettings {

 bool get pushEnabled; bool get friendActivity; bool get eventReminders; bool get squadAlerts; bool get smartAlerts; bool get discreetMode; int get quietHoursStart; int get quietHoursEnd; bool get locationBasedAlerts;
/// Create a copy of NotificationSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationSettingsCopyWith<NotificationSettings> get copyWith => _$NotificationSettingsCopyWithImpl<NotificationSettings>(this as NotificationSettings, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as NotificationSettings;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationSettings&&(identical(other.pushEnabled, _this.pushEnabled) || other.pushEnabled == _this.pushEnabled)&&(identical(other.friendActivity, _this.friendActivity) || other.friendActivity == _this.friendActivity)&&(identical(other.eventReminders, _this.eventReminders) || other.eventReminders == _this.eventReminders)&&(identical(other.squadAlerts, _this.squadAlerts) || other.squadAlerts == _this.squadAlerts)&&(identical(other.smartAlerts, _this.smartAlerts) || other.smartAlerts == _this.smartAlerts)&&(identical(other.discreetMode, _this.discreetMode) || other.discreetMode == _this.discreetMode)&&(identical(other.quietHoursStart, _this.quietHoursStart) || other.quietHoursStart == _this.quietHoursStart)&&(identical(other.quietHoursEnd, _this.quietHoursEnd) || other.quietHoursEnd == _this.quietHoursEnd)&&(identical(other.locationBasedAlerts, _this.locationBasedAlerts) || other.locationBasedAlerts == _this.locationBasedAlerts));
}


@override
int get hashCode {
  final _this = this as NotificationSettings;
  return Object.hash(runtimeType,_this.pushEnabled,_this.friendActivity,_this.eventReminders,_this.squadAlerts,_this.smartAlerts,_this.discreetMode,_this.quietHoursStart,_this.quietHoursEnd,_this.locationBasedAlerts);
}

@override
String toString() {
  final _this = this as NotificationSettings;
  return 'NotificationSettings(pushEnabled: ${_this.pushEnabled}, friendActivity: ${_this.friendActivity}, eventReminders: ${_this.eventReminders}, squadAlerts: ${_this.squadAlerts}, smartAlerts: ${_this.smartAlerts}, discreetMode: ${_this.discreetMode}, quietHoursStart: ${_this.quietHoursStart}, quietHoursEnd: ${_this.quietHoursEnd}, locationBasedAlerts: ${_this.locationBasedAlerts})';
}


}

/// @nodoc
abstract mixin class $NotificationSettingsCopyWith<$Res>  {
  factory $NotificationSettingsCopyWith(NotificationSettings value, $Res Function(NotificationSettings) _then) = _$NotificationSettingsCopyWithImpl;
@useResult
$Res call({
 bool pushEnabled, bool friendActivity, bool eventReminders, bool squadAlerts, bool smartAlerts, bool discreetMode, int quietHoursStart, int quietHoursEnd, bool locationBasedAlerts
});




}
/// @nodoc
class _$NotificationSettingsCopyWithImpl<$Res>
    implements $NotificationSettingsCopyWith<$Res> {
  _$NotificationSettingsCopyWithImpl(this._self, this._then);

  final NotificationSettings _self;
  final $Res Function(NotificationSettings) _then;

/// Create a copy of NotificationSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pushEnabled = null,Object? friendActivity = null,Object? eventReminders = null,Object? squadAlerts = null,Object? smartAlerts = null,Object? discreetMode = null,Object? quietHoursStart = null,Object? quietHoursEnd = null,Object? locationBasedAlerts = null,}) {
  return _then(NotificationSettings(
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


/// Adds pattern-matching-related methods to [NotificationSettings].
extension NotificationSettingsPatterns on NotificationSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationSettings() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationSettings value)  $default,){
final _that = this;
switch (_that) {
case _NotificationSettings():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationSettings value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationSettings() when $default != null:
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
case _NotificationSettings() when $default != null:
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
case _NotificationSettings():
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
case _NotificationSettings() when $default != null:
return $default(_that.pushEnabled,_that.friendActivity,_that.eventReminders,_that.squadAlerts,_that.smartAlerts,_that.discreetMode,_that.quietHoursStart,_that.quietHoursEnd,_that.locationBasedAlerts);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationSettings extends NotificationSettings {
  const _NotificationSettings({this.pushEnabled = true, this.friendActivity = true, this.eventReminders = true, this.squadAlerts = true, this.smartAlerts = true, this.discreetMode = false, this.quietHoursStart = 0, this.quietHoursEnd = 7, this.locationBasedAlerts = true}): super._();
  

@override@JsonKey() final  bool pushEnabled;
@override@JsonKey() final  bool friendActivity;
@override@JsonKey() final  bool eventReminders;
@override@JsonKey() final  bool squadAlerts;
@override@JsonKey() final  bool smartAlerts;
@override@JsonKey() final  bool discreetMode;
@override@JsonKey() final  int quietHoursStart;
@override@JsonKey() final  int quietHoursEnd;
@override@JsonKey() final  bool locationBasedAlerts;

/// Create a copy of NotificationSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationSettingsCopyWith<_NotificationSettings> get copyWith => __$NotificationSettingsCopyWithImpl<_NotificationSettings>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationSettings&&(identical(other.pushEnabled, pushEnabled) || other.pushEnabled == pushEnabled)&&(identical(other.friendActivity, friendActivity) || other.friendActivity == friendActivity)&&(identical(other.eventReminders, eventReminders) || other.eventReminders == eventReminders)&&(identical(other.squadAlerts, squadAlerts) || other.squadAlerts == squadAlerts)&&(identical(other.smartAlerts, smartAlerts) || other.smartAlerts == smartAlerts)&&(identical(other.discreetMode, discreetMode) || other.discreetMode == discreetMode)&&(identical(other.quietHoursStart, quietHoursStart) || other.quietHoursStart == quietHoursStart)&&(identical(other.quietHoursEnd, quietHoursEnd) || other.quietHoursEnd == quietHoursEnd)&&(identical(other.locationBasedAlerts, locationBasedAlerts) || other.locationBasedAlerts == locationBasedAlerts));
}


@override
int get hashCode {
    return Object.hash(runtimeType,pushEnabled,friendActivity,eventReminders,squadAlerts,smartAlerts,discreetMode,quietHoursStart,quietHoursEnd,locationBasedAlerts);
}

@override
String toString() {
    return 'NotificationSettings(pushEnabled: $pushEnabled, friendActivity: $friendActivity, eventReminders: $eventReminders, squadAlerts: $squadAlerts, smartAlerts: $smartAlerts, discreetMode: $discreetMode, quietHoursStart: $quietHoursStart, quietHoursEnd: $quietHoursEnd, locationBasedAlerts: $locationBasedAlerts)';
}


}

/// @nodoc
abstract mixin class _$NotificationSettingsCopyWith<$Res> implements $NotificationSettingsCopyWith<$Res> {
  factory _$NotificationSettingsCopyWith(_NotificationSettings value, $Res Function(_NotificationSettings) _then) = __$NotificationSettingsCopyWithImpl;
@override @useResult
$Res call({
 bool pushEnabled, bool friendActivity, bool eventReminders, bool squadAlerts, bool smartAlerts, bool discreetMode, int quietHoursStart, int quietHoursEnd, bool locationBasedAlerts
});




}
/// @nodoc
class __$NotificationSettingsCopyWithImpl<$Res>
    implements _$NotificationSettingsCopyWith<$Res> {
  __$NotificationSettingsCopyWithImpl(this._self, this._then);

  final _NotificationSettings _self;
  final $Res Function(_NotificationSettings) _then;

/// Create a copy of NotificationSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pushEnabled = null,Object? friendActivity = null,Object? eventReminders = null,Object? squadAlerts = null,Object? smartAlerts = null,Object? discreetMode = null,Object? quietHoursStart = null,Object? quietHoursEnd = null,Object? locationBasedAlerts = null,}) {
  return _then(_NotificationSettings(
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
