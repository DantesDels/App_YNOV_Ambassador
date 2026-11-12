// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Friend {

 String get id; String get firstName; String? get lastName; String? get avatarUrl; String get schoolName; DateTime? get lastActiveAt; bool get isOnline; int get sharedEvents;
/// Create a copy of Friend
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FriendCopyWith<Friend> get copyWith => _$FriendCopyWithImpl<Friend>(this as Friend, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Friend;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Friend&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.avatarUrl, _this.avatarUrl) || other.avatarUrl == _this.avatarUrl)&&(identical(other.schoolName, _this.schoolName) || other.schoolName == _this.schoolName)&&(identical(other.lastActiveAt, _this.lastActiveAt) || other.lastActiveAt == _this.lastActiveAt)&&(identical(other.isOnline, _this.isOnline) || other.isOnline == _this.isOnline)&&(identical(other.sharedEvents, _this.sharedEvents) || other.sharedEvents == _this.sharedEvents));
}


@override
int get hashCode {
  final _this = this as Friend;
  return Object.hash(runtimeType,_this.id,_this.firstName,_this.lastName,_this.avatarUrl,_this.schoolName,_this.lastActiveAt,_this.isOnline,_this.sharedEvents);
}

@override
String toString() {
  final _this = this as Friend;
  return 'Friend(id: ${_this.id}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, avatarUrl: ${_this.avatarUrl}, schoolName: ${_this.schoolName}, lastActiveAt: ${_this.lastActiveAt}, isOnline: ${_this.isOnline}, sharedEvents: ${_this.sharedEvents})';
}


}

/// @nodoc
abstract mixin class $FriendCopyWith<$Res>  {
  factory $FriendCopyWith(Friend value, $Res Function(Friend) _then) = _$FriendCopyWithImpl;
@useResult
$Res call({
 String id, String firstName, String? lastName, String? avatarUrl, String schoolName, DateTime? lastActiveAt, bool isOnline, int sharedEvents
});




}
/// @nodoc
class _$FriendCopyWithImpl<$Res>
    implements $FriendCopyWith<$Res> {
  _$FriendCopyWithImpl(this._self, this._then);

  final Friend _self;
  final $Res Function(Friend) _then;

/// Create a copy of Friend
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = freezed,Object? avatarUrl = freezed,Object? schoolName = null,Object? lastActiveAt = freezed,Object? isOnline = null,Object? sharedEvents = null,}) {
  return _then(Friend(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,schoolName: null == schoolName ? _self.schoolName : schoolName // ignore: cast_nullable_to_non_nullable
as String,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,sharedEvents: null == sharedEvents ? _self.sharedEvents : sharedEvents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Friend].
extension FriendPatterns on Friend {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Friend value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Friend() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Friend value)  $default,){
final _that = this;
switch (_that) {
case _Friend():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Friend value)?  $default,){
final _that = this;
switch (_that) {
case _Friend() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String firstName,  String? lastName,  String? avatarUrl,  String schoolName,  DateTime? lastActiveAt,  bool isOnline,  int sharedEvents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Friend() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.avatarUrl,_that.schoolName,_that.lastActiveAt,_that.isOnline,_that.sharedEvents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String firstName,  String? lastName,  String? avatarUrl,  String schoolName,  DateTime? lastActiveAt,  bool isOnline,  int sharedEvents)  $default,) {final _that = this;
switch (_that) {
case _Friend():
return $default(_that.id,_that.firstName,_that.lastName,_that.avatarUrl,_that.schoolName,_that.lastActiveAt,_that.isOnline,_that.sharedEvents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String firstName,  String? lastName,  String? avatarUrl,  String schoolName,  DateTime? lastActiveAt,  bool isOnline,  int sharedEvents)?  $default,) {final _that = this;
switch (_that) {
case _Friend() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.avatarUrl,_that.schoolName,_that.lastActiveAt,_that.isOnline,_that.sharedEvents);case _:
  return null;

}
}

}

/// @nodoc


class _Friend extends Friend {
  const _Friend({required this.id, required this.firstName, this.lastName, this.avatarUrl, this.schoolName = '', this.lastActiveAt, this.isOnline = false, this.sharedEvents = 0}): super._();
  

@override final  String id;
@override final  String firstName;
@override final  String? lastName;
@override final  String? avatarUrl;
@override@JsonKey() final  String schoolName;
@override final  DateTime? lastActiveAt;
@override@JsonKey() final  bool isOnline;
@override@JsonKey() final  int sharedEvents;

/// Create a copy of Friend
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FriendCopyWith<_Friend> get copyWith => __$FriendCopyWithImpl<_Friend>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Friend&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.schoolName, schoolName) || other.schoolName == schoolName)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.sharedEvents, sharedEvents) || other.sharedEvents == sharedEvents));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,firstName,lastName,avatarUrl,schoolName,lastActiveAt,isOnline,sharedEvents);
}

@override
String toString() {
    return 'Friend(id: $id, firstName: $firstName, lastName: $lastName, avatarUrl: $avatarUrl, schoolName: $schoolName, lastActiveAt: $lastActiveAt, isOnline: $isOnline, sharedEvents: $sharedEvents)';
}


}

/// @nodoc
abstract mixin class _$FriendCopyWith<$Res> implements $FriendCopyWith<$Res> {
  factory _$FriendCopyWith(_Friend value, $Res Function(_Friend) _then) = __$FriendCopyWithImpl;
@override @useResult
$Res call({
 String id, String firstName, String? lastName, String? avatarUrl, String schoolName, DateTime? lastActiveAt, bool isOnline, int sharedEvents
});




}
/// @nodoc
class __$FriendCopyWithImpl<$Res>
    implements _$FriendCopyWith<$Res> {
  __$FriendCopyWithImpl(this._self, this._then);

  final _Friend _self;
  final $Res Function(_Friend) _then;

/// Create a copy of Friend
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = freezed,Object? avatarUrl = freezed,Object? schoolName = null,Object? lastActiveAt = freezed,Object? isOnline = null,Object? sharedEvents = null,}) {
  return _then(_Friend(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,schoolName: null == schoolName ? _self.schoolName : schoolName // ignore: cast_nullable_to_non_nullable
as String,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,sharedEvents: null == sharedEvents ? _self.sharedEvents : sharedEvents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
