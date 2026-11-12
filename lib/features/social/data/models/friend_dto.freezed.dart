// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FriendDto {

 String get id; String get firstName; String? get lastName; String? get avatarUrl; String get schoolName; DateTime? get lastActiveAt; bool get isOnline; int get sharedEvents;
/// Create a copy of FriendDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FriendDtoCopyWith<FriendDto> get copyWith => _$FriendDtoCopyWithImpl<FriendDto>(this as FriendDto, _$identity);

  /// Serializes this FriendDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FriendDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FriendDto&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.avatarUrl, _this.avatarUrl) || other.avatarUrl == _this.avatarUrl)&&(identical(other.schoolName, _this.schoolName) || other.schoolName == _this.schoolName)&&(identical(other.lastActiveAt, _this.lastActiveAt) || other.lastActiveAt == _this.lastActiveAt)&&(identical(other.isOnline, _this.isOnline) || other.isOnline == _this.isOnline)&&(identical(other.sharedEvents, _this.sharedEvents) || other.sharedEvents == _this.sharedEvents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FriendDto;
  return Object.hash(runtimeType,_this.id,_this.firstName,_this.lastName,_this.avatarUrl,_this.schoolName,_this.lastActiveAt,_this.isOnline,_this.sharedEvents);
}

@override
String toString() {
  final _this = this as FriendDto;
  return 'FriendDto(id: ${_this.id}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, avatarUrl: ${_this.avatarUrl}, schoolName: ${_this.schoolName}, lastActiveAt: ${_this.lastActiveAt}, isOnline: ${_this.isOnline}, sharedEvents: ${_this.sharedEvents})';
}


}

/// @nodoc
abstract mixin class $FriendDtoCopyWith<$Res>  {
  factory $FriendDtoCopyWith(FriendDto value, $Res Function(FriendDto) _then) = _$FriendDtoCopyWithImpl;
@useResult
$Res call({
 String id, String firstName, String? lastName, String? avatarUrl, String schoolName, DateTime? lastActiveAt, bool isOnline, int sharedEvents
});




}
/// @nodoc
class _$FriendDtoCopyWithImpl<$Res>
    implements $FriendDtoCopyWith<$Res> {
  _$FriendDtoCopyWithImpl(this._self, this._then);

  final FriendDto _self;
  final $Res Function(FriendDto) _then;

/// Create a copy of FriendDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = freezed,Object? avatarUrl = freezed,Object? schoolName = null,Object? lastActiveAt = freezed,Object? isOnline = null,Object? sharedEvents = null,}) {
  return _then(FriendDto(
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


/// Adds pattern-matching-related methods to [FriendDto].
extension FriendDtoPatterns on FriendDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FriendDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FriendDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FriendDto value)  $default,){
final _that = this;
switch (_that) {
case _FriendDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FriendDto value)?  $default,){
final _that = this;
switch (_that) {
case _FriendDto() when $default != null:
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
case _FriendDto() when $default != null:
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
case _FriendDto():
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
case _FriendDto() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.avatarUrl,_that.schoolName,_that.lastActiveAt,_that.isOnline,_that.sharedEvents);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _FriendDto implements FriendDto {
  const _FriendDto({required this.id, required this.firstName, this.lastName, this.avatarUrl, this.schoolName = '', this.lastActiveAt, this.isOnline = false, this.sharedEvents = 0});
  factory _FriendDto.fromJson(Map<String, dynamic> json) => _$FriendDtoFromJson(json);

@override final  String id;
@override final  String firstName;
@override final  String? lastName;
@override final  String? avatarUrl;
@override@JsonKey() final  String schoolName;
@override final  DateTime? lastActiveAt;
@override@JsonKey() final  bool isOnline;
@override@JsonKey() final  int sharedEvents;

/// Create a copy of FriendDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FriendDtoCopyWith<_FriendDto> get copyWith => __$FriendDtoCopyWithImpl<_FriendDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FriendDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FriendDto&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.schoolName, schoolName) || other.schoolName == schoolName)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.sharedEvents, sharedEvents) || other.sharedEvents == sharedEvents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,firstName,lastName,avatarUrl,schoolName,lastActiveAt,isOnline,sharedEvents);
}

@override
String toString() {
    return 'FriendDto(id: $id, firstName: $firstName, lastName: $lastName, avatarUrl: $avatarUrl, schoolName: $schoolName, lastActiveAt: $lastActiveAt, isOnline: $isOnline, sharedEvents: $sharedEvents)';
}


}

/// @nodoc
abstract mixin class _$FriendDtoCopyWith<$Res> implements $FriendDtoCopyWith<$Res> {
  factory _$FriendDtoCopyWith(_FriendDto value, $Res Function(_FriendDto) _then) = __$FriendDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String firstName, String? lastName, String? avatarUrl, String schoolName, DateTime? lastActiveAt, bool isOnline, int sharedEvents
});




}
/// @nodoc
class __$FriendDtoCopyWithImpl<$Res>
    implements _$FriendDtoCopyWith<$Res> {
  __$FriendDtoCopyWithImpl(this._self, this._then);

  final _FriendDto _self;
  final $Res Function(_FriendDto) _then;

/// Create a copy of FriendDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = freezed,Object? avatarUrl = freezed,Object? schoolName = null,Object? lastActiveAt = freezed,Object? isOnline = null,Object? sharedEvents = null,}) {
  return _then(_FriendDto(
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
