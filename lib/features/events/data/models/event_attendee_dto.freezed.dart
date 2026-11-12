// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_attendee_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventAttendeeDto {

 String get id; String get firstName; String? get lastName; String? get avatarUrl; bool get isFriend;
/// Create a copy of EventAttendeeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventAttendeeDtoCopyWith<EventAttendeeDto> get copyWith => _$EventAttendeeDtoCopyWithImpl<EventAttendeeDto>(this as EventAttendeeDto, _$identity);

  /// Serializes this EventAttendeeDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as EventAttendeeDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventAttendeeDto&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.avatarUrl, _this.avatarUrl) || other.avatarUrl == _this.avatarUrl)&&(identical(other.isFriend, _this.isFriend) || other.isFriend == _this.isFriend));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as EventAttendeeDto;
  return Object.hash(runtimeType,_this.id,_this.firstName,_this.lastName,_this.avatarUrl,_this.isFriend);
}

@override
String toString() {
  final _this = this as EventAttendeeDto;
  return 'EventAttendeeDto(id: ${_this.id}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, avatarUrl: ${_this.avatarUrl}, isFriend: ${_this.isFriend})';
}


}

/// @nodoc
abstract mixin class $EventAttendeeDtoCopyWith<$Res>  {
  factory $EventAttendeeDtoCopyWith(EventAttendeeDto value, $Res Function(EventAttendeeDto) _then) = _$EventAttendeeDtoCopyWithImpl;
@useResult
$Res call({
 String id, String firstName, String? lastName, String? avatarUrl, bool isFriend
});




}
/// @nodoc
class _$EventAttendeeDtoCopyWithImpl<$Res>
    implements $EventAttendeeDtoCopyWith<$Res> {
  _$EventAttendeeDtoCopyWithImpl(this._self, this._then);

  final EventAttendeeDto _self;
  final $Res Function(EventAttendeeDto) _then;

/// Create a copy of EventAttendeeDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = freezed,Object? avatarUrl = freezed,Object? isFriend = null,}) {
  return _then(EventAttendeeDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isFriend: null == isFriend ? _self.isFriend : isFriend // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EventAttendeeDto].
extension EventAttendeeDtoPatterns on EventAttendeeDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventAttendeeDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventAttendeeDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventAttendeeDto value)  $default,){
final _that = this;
switch (_that) {
case _EventAttendeeDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventAttendeeDto value)?  $default,){
final _that = this;
switch (_that) {
case _EventAttendeeDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String firstName,  String? lastName,  String? avatarUrl,  bool isFriend)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventAttendeeDto() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.avatarUrl,_that.isFriend);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String firstName,  String? lastName,  String? avatarUrl,  bool isFriend)  $default,) {final _that = this;
switch (_that) {
case _EventAttendeeDto():
return $default(_that.id,_that.firstName,_that.lastName,_that.avatarUrl,_that.isFriend);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String firstName,  String? lastName,  String? avatarUrl,  bool isFriend)?  $default,) {final _that = this;
switch (_that) {
case _EventAttendeeDto() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.avatarUrl,_that.isFriend);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _EventAttendeeDto implements EventAttendeeDto {
  const _EventAttendeeDto({required this.id, required this.firstName, this.lastName, this.avatarUrl, this.isFriend = true});
  factory _EventAttendeeDto.fromJson(Map<String, dynamic> json) => _$EventAttendeeDtoFromJson(json);

@override final  String id;
@override final  String firstName;
@override final  String? lastName;
@override final  String? avatarUrl;
@override@JsonKey() final  bool isFriend;

/// Create a copy of EventAttendeeDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventAttendeeDtoCopyWith<_EventAttendeeDto> get copyWith => __$EventAttendeeDtoCopyWithImpl<_EventAttendeeDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventAttendeeDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventAttendeeDto&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isFriend, isFriend) || other.isFriend == isFriend));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,firstName,lastName,avatarUrl,isFriend);
}

@override
String toString() {
    return 'EventAttendeeDto(id: $id, firstName: $firstName, lastName: $lastName, avatarUrl: $avatarUrl, isFriend: $isFriend)';
}


}

/// @nodoc
abstract mixin class _$EventAttendeeDtoCopyWith<$Res> implements $EventAttendeeDtoCopyWith<$Res> {
  factory _$EventAttendeeDtoCopyWith(_EventAttendeeDto value, $Res Function(_EventAttendeeDto) _then) = __$EventAttendeeDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String firstName, String? lastName, String? avatarUrl, bool isFriend
});




}
/// @nodoc
class __$EventAttendeeDtoCopyWithImpl<$Res>
    implements _$EventAttendeeDtoCopyWith<$Res> {
  __$EventAttendeeDtoCopyWithImpl(this._self, this._then);

  final _EventAttendeeDto _self;
  final $Res Function(_EventAttendeeDto) _then;

/// Create a copy of EventAttendeeDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = freezed,Object? avatarUrl = freezed,Object? isFriend = null,}) {
  return _then(_EventAttendeeDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isFriend: null == isFriend ? _self.isFriend : isFriend // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
