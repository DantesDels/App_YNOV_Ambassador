// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ActivityItem {

 String get id; ActivityType get type; String get actorName; String get eventId; String get eventTitle; DateTime get createdAt; String? get actorAvatarUrl; int get friendCount; bool get isFriendActivity;
/// Create a copy of ActivityItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityItemCopyWith<ActivityItem> get copyWith => _$ActivityItemCopyWithImpl<ActivityItem>(this as ActivityItem, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ActivityItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityItem&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.actorName, _this.actorName) || other.actorName == _this.actorName)&&(identical(other.eventId, _this.eventId) || other.eventId == _this.eventId)&&(identical(other.eventTitle, _this.eventTitle) || other.eventTitle == _this.eventTitle)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.actorAvatarUrl, _this.actorAvatarUrl) || other.actorAvatarUrl == _this.actorAvatarUrl)&&(identical(other.friendCount, _this.friendCount) || other.friendCount == _this.friendCount)&&(identical(other.isFriendActivity, _this.isFriendActivity) || other.isFriendActivity == _this.isFriendActivity));
}


@override
int get hashCode {
  final _this = this as ActivityItem;
  return Object.hash(runtimeType,_this.id,_this.type,_this.actorName,_this.eventId,_this.eventTitle,_this.createdAt,_this.actorAvatarUrl,_this.friendCount,_this.isFriendActivity);
}

@override
String toString() {
  final _this = this as ActivityItem;
  return 'ActivityItem(id: ${_this.id}, type: ${_this.type}, actorName: ${_this.actorName}, eventId: ${_this.eventId}, eventTitle: ${_this.eventTitle}, createdAt: ${_this.createdAt}, actorAvatarUrl: ${_this.actorAvatarUrl}, friendCount: ${_this.friendCount}, isFriendActivity: ${_this.isFriendActivity})';
}


}

/// @nodoc
abstract mixin class $ActivityItemCopyWith<$Res>  {
  factory $ActivityItemCopyWith(ActivityItem value, $Res Function(ActivityItem) _then) = _$ActivityItemCopyWithImpl;
@useResult
$Res call({
 String id, ActivityType type, String actorName, String eventId, String eventTitle, DateTime createdAt, String? actorAvatarUrl, int friendCount, bool isFriendActivity
});




}
/// @nodoc
class _$ActivityItemCopyWithImpl<$Res>
    implements $ActivityItemCopyWith<$Res> {
  _$ActivityItemCopyWithImpl(this._self, this._then);

  final ActivityItem _self;
  final $Res Function(ActivityItem) _then;

/// Create a copy of ActivityItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? actorName = null,Object? eventId = null,Object? eventTitle = null,Object? createdAt = null,Object? actorAvatarUrl = freezed,Object? friendCount = null,Object? isFriendActivity = null,}) {
  return _then(ActivityItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ActivityType,actorName: null == actorName ? _self.actorName : actorName // ignore: cast_nullable_to_non_nullable
as String,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,actorAvatarUrl: freezed == actorAvatarUrl ? _self.actorAvatarUrl : actorAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,friendCount: null == friendCount ? _self.friendCount : friendCount // ignore: cast_nullable_to_non_nullable
as int,isFriendActivity: null == isFriendActivity ? _self.isFriendActivity : isFriendActivity // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityItem].
extension ActivityItemPatterns on ActivityItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityItem value)  $default,){
final _that = this;
switch (_that) {
case _ActivityItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityItem value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  ActivityType type,  String actorName,  String eventId,  String eventTitle,  DateTime createdAt,  String? actorAvatarUrl,  int friendCount,  bool isFriendActivity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityItem() when $default != null:
return $default(_that.id,_that.type,_that.actorName,_that.eventId,_that.eventTitle,_that.createdAt,_that.actorAvatarUrl,_that.friendCount,_that.isFriendActivity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  ActivityType type,  String actorName,  String eventId,  String eventTitle,  DateTime createdAt,  String? actorAvatarUrl,  int friendCount,  bool isFriendActivity)  $default,) {final _that = this;
switch (_that) {
case _ActivityItem():
return $default(_that.id,_that.type,_that.actorName,_that.eventId,_that.eventTitle,_that.createdAt,_that.actorAvatarUrl,_that.friendCount,_that.isFriendActivity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  ActivityType type,  String actorName,  String eventId,  String eventTitle,  DateTime createdAt,  String? actorAvatarUrl,  int friendCount,  bool isFriendActivity)?  $default,) {final _that = this;
switch (_that) {
case _ActivityItem() when $default != null:
return $default(_that.id,_that.type,_that.actorName,_that.eventId,_that.eventTitle,_that.createdAt,_that.actorAvatarUrl,_that.friendCount,_that.isFriendActivity);case _:
  return null;

}
}

}

/// @nodoc


class _ActivityItem extends ActivityItem {
  const _ActivityItem({required this.id, required this.type, required this.actorName, required this.eventId, required this.eventTitle, required this.createdAt, this.actorAvatarUrl, this.friendCount = 1, this.isFriendActivity = false}): super._();
  

@override final  String id;
@override final  ActivityType type;
@override final  String actorName;
@override final  String eventId;
@override final  String eventTitle;
@override final  DateTime createdAt;
@override final  String? actorAvatarUrl;
@override@JsonKey() final  int friendCount;
@override@JsonKey() final  bool isFriendActivity;

/// Create a copy of ActivityItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityItemCopyWith<_ActivityItem> get copyWith => __$ActivityItemCopyWithImpl<_ActivityItem>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityItem&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.actorName, actorName) || other.actorName == actorName)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.actorAvatarUrl, actorAvatarUrl) || other.actorAvatarUrl == actorAvatarUrl)&&(identical(other.friendCount, friendCount) || other.friendCount == friendCount)&&(identical(other.isFriendActivity, isFriendActivity) || other.isFriendActivity == isFriendActivity));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,type,actorName,eventId,eventTitle,createdAt,actorAvatarUrl,friendCount,isFriendActivity);
}

@override
String toString() {
    return 'ActivityItem(id: $id, type: $type, actorName: $actorName, eventId: $eventId, eventTitle: $eventTitle, createdAt: $createdAt, actorAvatarUrl: $actorAvatarUrl, friendCount: $friendCount, isFriendActivity: $isFriendActivity)';
}


}

/// @nodoc
abstract mixin class _$ActivityItemCopyWith<$Res> implements $ActivityItemCopyWith<$Res> {
  factory _$ActivityItemCopyWith(_ActivityItem value, $Res Function(_ActivityItem) _then) = __$ActivityItemCopyWithImpl;
@override @useResult
$Res call({
 String id, ActivityType type, String actorName, String eventId, String eventTitle, DateTime createdAt, String? actorAvatarUrl, int friendCount, bool isFriendActivity
});




}
/// @nodoc
class __$ActivityItemCopyWithImpl<$Res>
    implements _$ActivityItemCopyWith<$Res> {
  __$ActivityItemCopyWithImpl(this._self, this._then);

  final _ActivityItem _self;
  final $Res Function(_ActivityItem) _then;

/// Create a copy of ActivityItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? actorName = null,Object? eventId = null,Object? eventTitle = null,Object? createdAt = null,Object? actorAvatarUrl = freezed,Object? friendCount = null,Object? isFriendActivity = null,}) {
  return _then(_ActivityItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ActivityType,actorName: null == actorName ? _self.actorName : actorName // ignore: cast_nullable_to_non_nullable
as String,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,actorAvatarUrl: freezed == actorAvatarUrl ? _self.actorAvatarUrl : actorAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,friendCount: null == friendCount ? _self.friendCount : friendCount // ignore: cast_nullable_to_non_nullable
as int,isFriendActivity: null == isFriendActivity ? _self.isFriendActivity : isFriendActivity // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
