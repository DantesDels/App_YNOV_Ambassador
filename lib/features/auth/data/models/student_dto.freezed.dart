// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudentDto {

 String get id; String get email; String get firstName; String get lastName; String get schoolName; List<String> get memberships; String? get avatarUrl;
/// Create a copy of StudentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentDtoCopyWith<StudentDto> get copyWith => _$StudentDtoCopyWithImpl<StudentDto>(this as StudentDto, _$identity);

  /// Serializes this StudentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StudentDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentDto&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.schoolName, _this.schoolName) || other.schoolName == _this.schoolName)&&const DeepCollectionEquality().equals(other.memberships, _this.memberships)&&(identical(other.avatarUrl, _this.avatarUrl) || other.avatarUrl == _this.avatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StudentDto;
  return Object.hash(runtimeType,_this.id,_this.email,_this.firstName,_this.lastName,_this.schoolName,const DeepCollectionEquality().hash(_this.memberships),_this.avatarUrl);
}

@override
String toString() {
  final _this = this as StudentDto;
  return 'StudentDto(id: ${_this.id}, email: ${_this.email}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, schoolName: ${_this.schoolName}, memberships: ${_this.memberships}, avatarUrl: ${_this.avatarUrl})';
}


}

/// @nodoc
abstract mixin class $StudentDtoCopyWith<$Res>  {
  factory $StudentDtoCopyWith(StudentDto value, $Res Function(StudentDto) _then) = _$StudentDtoCopyWithImpl;
@useResult
$Res call({
 String id, String email, String firstName, String lastName, String schoolName, List<String> memberships, String? avatarUrl
});




}
/// @nodoc
class _$StudentDtoCopyWithImpl<$Res>
    implements $StudentDtoCopyWith<$Res> {
  _$StudentDtoCopyWithImpl(this._self, this._then);

  final StudentDto _self;
  final $Res Function(StudentDto) _then;

/// Create a copy of StudentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? firstName = null,Object? lastName = null,Object? schoolName = null,Object? memberships = null,Object? avatarUrl = freezed,}) {
  return _then(StudentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,schoolName: null == schoolName ? _self.schoolName : schoolName // ignore: cast_nullable_to_non_nullable
as String,memberships: null == memberships ? _self.memberships : memberships // ignore: cast_nullable_to_non_nullable
as List<String>,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StudentDto].
extension StudentDtoPatterns on StudentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentDto value)  $default,){
final _that = this;
switch (_that) {
case _StudentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentDto value)?  $default,){
final _that = this;
switch (_that) {
case _StudentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  String firstName,  String lastName,  String schoolName,  List<String> memberships,  String? avatarUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentDto() when $default != null:
return $default(_that.id,_that.email,_that.firstName,_that.lastName,_that.schoolName,_that.memberships,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  String firstName,  String lastName,  String schoolName,  List<String> memberships,  String? avatarUrl)  $default,) {final _that = this;
switch (_that) {
case _StudentDto():
return $default(_that.id,_that.email,_that.firstName,_that.lastName,_that.schoolName,_that.memberships,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  String firstName,  String lastName,  String schoolName,  List<String> memberships,  String? avatarUrl)?  $default,) {final _that = this;
switch (_that) {
case _StudentDto() when $default != null:
return $default(_that.id,_that.email,_that.firstName,_that.lastName,_that.schoolName,_that.memberships,_that.avatarUrl);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _StudentDto implements StudentDto {
  const _StudentDto({required this.id, required this.email, required this.firstName, required this.lastName, required this.schoolName,  List<String> memberships = const <String>[], this.avatarUrl}): _memberships = memberships;
  factory _StudentDto.fromJson(Map<String, dynamic> json) => _$StudentDtoFromJson(json);

@override final  String id;
@override final  String email;
@override final  String firstName;
@override final  String lastName;
@override final  String schoolName;
 final  List<String> _memberships;
@override@JsonKey() List<String> get memberships {
  if (_memberships is EqualUnmodifiableListView) return _memberships;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_memberships);
}

@override final  String? avatarUrl;

/// Create a copy of StudentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentDtoCopyWith<_StudentDto> get copyWith => __$StudentDtoCopyWithImpl<_StudentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.schoolName, schoolName) || other.schoolName == schoolName)&&const DeepCollectionEquality().equals(other.memberships, _memberships)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,email,firstName,lastName,schoolName,const DeepCollectionEquality().hash(_memberships),avatarUrl);
}

@override
String toString() {
    return 'StudentDto(id: $id, email: $email, firstName: $firstName, lastName: $lastName, schoolName: $schoolName, memberships: $memberships, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class _$StudentDtoCopyWith<$Res> implements $StudentDtoCopyWith<$Res> {
  factory _$StudentDtoCopyWith(_StudentDto value, $Res Function(_StudentDto) _then) = __$StudentDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String firstName, String lastName, String schoolName, List<String> memberships, String? avatarUrl
});




}
/// @nodoc
class __$StudentDtoCopyWithImpl<$Res>
    implements _$StudentDtoCopyWith<$Res> {
  __$StudentDtoCopyWithImpl(this._self, this._then);

  final _StudentDto _self;
  final $Res Function(_StudentDto) _then;

/// Create a copy of StudentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? firstName = null,Object? lastName = null,Object? schoolName = null,Object? memberships = null,Object? avatarUrl = freezed,}) {
  return _then(_StudentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,schoolName: null == schoolName ? _self.schoolName : schoolName // ignore: cast_nullable_to_non_nullable
as String,memberships: null == memberships ? _self._memberships : memberships // ignore: cast_nullable_to_non_nullable
as List<String>,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
