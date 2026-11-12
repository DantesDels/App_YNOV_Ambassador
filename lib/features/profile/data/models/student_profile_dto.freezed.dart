// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudentProfileDto {

 String get id; String get firstName; String get lastName; String get email; String get schoolName; String get campus; String get bio; List<String> get interests; ProfileStatsDto get stats; bool get isDiscreet; String? get avatarUrl; DateTime? get memberSince;
/// Create a copy of StudentProfileDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentProfileDtoCopyWith<StudentProfileDto> get copyWith => _$StudentProfileDtoCopyWithImpl<StudentProfileDto>(this as StudentProfileDto, _$identity);

  /// Serializes this StudentProfileDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as StudentProfileDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentProfileDto&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.schoolName, _this.schoolName) || other.schoolName == _this.schoolName)&&(identical(other.campus, _this.campus) || other.campus == _this.campus)&&(identical(other.bio, _this.bio) || other.bio == _this.bio)&&const DeepCollectionEquality().equals(other.interests, _this.interests)&&(identical(other.stats, _this.stats) || other.stats == _this.stats)&&(identical(other.isDiscreet, _this.isDiscreet) || other.isDiscreet == _this.isDiscreet)&&(identical(other.avatarUrl, _this.avatarUrl) || other.avatarUrl == _this.avatarUrl)&&(identical(other.memberSince, _this.memberSince) || other.memberSince == _this.memberSince));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as StudentProfileDto;
  return Object.hash(runtimeType,_this.id,_this.firstName,_this.lastName,_this.email,_this.schoolName,_this.campus,_this.bio,const DeepCollectionEquality().hash(_this.interests),_this.stats,_this.isDiscreet,_this.avatarUrl,_this.memberSince);
}

@override
String toString() {
  final _this = this as StudentProfileDto;
  return 'StudentProfileDto(id: ${_this.id}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, email: ${_this.email}, schoolName: ${_this.schoolName}, campus: ${_this.campus}, bio: ${_this.bio}, interests: ${_this.interests}, stats: ${_this.stats}, isDiscreet: ${_this.isDiscreet}, avatarUrl: ${_this.avatarUrl}, memberSince: ${_this.memberSince})';
}


}

/// @nodoc
abstract mixin class $StudentProfileDtoCopyWith<$Res>  {
  factory $StudentProfileDtoCopyWith(StudentProfileDto value, $Res Function(StudentProfileDto) _then) = _$StudentProfileDtoCopyWithImpl;
@useResult
$Res call({
 String id, String firstName, String lastName, String email, String schoolName, String campus, String bio, List<String> interests, ProfileStatsDto stats, bool isDiscreet, String? avatarUrl, DateTime? memberSince
});


$ProfileStatsDtoCopyWith<$Res> get stats;

}
/// @nodoc
class _$StudentProfileDtoCopyWithImpl<$Res>
    implements $StudentProfileDtoCopyWith<$Res> {
  _$StudentProfileDtoCopyWithImpl(this._self, this._then);

  final StudentProfileDto _self;
  final $Res Function(StudentProfileDto) _then;

/// Create a copy of StudentProfileDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? schoolName = null,Object? campus = null,Object? bio = null,Object? interests = null,Object? stats = null,Object? isDiscreet = null,Object? avatarUrl = freezed,Object? memberSince = freezed,}) {
  return _then(StudentProfileDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,schoolName: null == schoolName ? _self.schoolName : schoolName // ignore: cast_nullable_to_non_nullable
as String,campus: null == campus ? _self.campus : campus // ignore: cast_nullable_to_non_nullable
as String,bio: null == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String,interests: null == interests ? _self.interests : interests // ignore: cast_nullable_to_non_nullable
as List<String>,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as ProfileStatsDto,isDiscreet: null == isDiscreet ? _self.isDiscreet : isDiscreet // ignore: cast_nullable_to_non_nullable
as bool,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,memberSince: freezed == memberSince ? _self.memberSince : memberSince // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of StudentProfileDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileStatsDtoCopyWith<$Res> get stats {
  
  return $ProfileStatsDtoCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}
}


/// Adds pattern-matching-related methods to [StudentProfileDto].
extension StudentProfileDtoPatterns on StudentProfileDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentProfileDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentProfileDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentProfileDto value)  $default,){
final _that = this;
switch (_that) {
case _StudentProfileDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentProfileDto value)?  $default,){
final _that = this;
switch (_that) {
case _StudentProfileDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String email,  String schoolName,  String campus,  String bio,  List<String> interests,  ProfileStatsDto stats,  bool isDiscreet,  String? avatarUrl,  DateTime? memberSince)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentProfileDto() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.schoolName,_that.campus,_that.bio,_that.interests,_that.stats,_that.isDiscreet,_that.avatarUrl,_that.memberSince);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String email,  String schoolName,  String campus,  String bio,  List<String> interests,  ProfileStatsDto stats,  bool isDiscreet,  String? avatarUrl,  DateTime? memberSince)  $default,) {final _that = this;
switch (_that) {
case _StudentProfileDto():
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.schoolName,_that.campus,_that.bio,_that.interests,_that.stats,_that.isDiscreet,_that.avatarUrl,_that.memberSince);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String firstName,  String lastName,  String email,  String schoolName,  String campus,  String bio,  List<String> interests,  ProfileStatsDto stats,  bool isDiscreet,  String? avatarUrl,  DateTime? memberSince)?  $default,) {final _that = this;
switch (_that) {
case _StudentProfileDto() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.schoolName,_that.campus,_that.bio,_that.interests,_that.stats,_that.isDiscreet,_that.avatarUrl,_that.memberSince);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _StudentProfileDto implements StudentProfileDto {
  const _StudentProfileDto({required this.id, required this.firstName, required this.lastName, required this.email, required this.schoolName, this.campus = '', this.bio = '',  List<String> interests = const <String>[], this.stats = const ProfileStatsDto(), this.isDiscreet = false, this.avatarUrl, this.memberSince}): _interests = interests;
  factory _StudentProfileDto.fromJson(Map<String, dynamic> json) => _$StudentProfileDtoFromJson(json);

@override final  String id;
@override final  String firstName;
@override final  String lastName;
@override final  String email;
@override final  String schoolName;
@override@JsonKey() final  String campus;
@override@JsonKey() final  String bio;
 final  List<String> _interests;
@override@JsonKey() List<String> get interests {
  if (_interests is EqualUnmodifiableListView) return _interests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interests);
}

@override@JsonKey() final  ProfileStatsDto stats;
@override@JsonKey() final  bool isDiscreet;
@override final  String? avatarUrl;
@override final  DateTime? memberSince;

/// Create a copy of StudentProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentProfileDtoCopyWith<_StudentProfileDto> get copyWith => __$StudentProfileDtoCopyWithImpl<_StudentProfileDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentProfileDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentProfileDto&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.schoolName, schoolName) || other.schoolName == schoolName)&&(identical(other.campus, campus) || other.campus == campus)&&(identical(other.bio, bio) || other.bio == bio)&&const DeepCollectionEquality().equals(other.interests, _interests)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.isDiscreet, isDiscreet) || other.isDiscreet == isDiscreet)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.memberSince, memberSince) || other.memberSince == memberSince));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,firstName,lastName,email,schoolName,campus,bio,const DeepCollectionEquality().hash(_interests),stats,isDiscreet,avatarUrl,memberSince);
}

@override
String toString() {
    return 'StudentProfileDto(id: $id, firstName: $firstName, lastName: $lastName, email: $email, schoolName: $schoolName, campus: $campus, bio: $bio, interests: $interests, stats: $stats, isDiscreet: $isDiscreet, avatarUrl: $avatarUrl, memberSince: $memberSince)';
}


}

/// @nodoc
abstract mixin class _$StudentProfileDtoCopyWith<$Res> implements $StudentProfileDtoCopyWith<$Res> {
  factory _$StudentProfileDtoCopyWith(_StudentProfileDto value, $Res Function(_StudentProfileDto) _then) = __$StudentProfileDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String firstName, String lastName, String email, String schoolName, String campus, String bio, List<String> interests, ProfileStatsDto stats, bool isDiscreet, String? avatarUrl, DateTime? memberSince
});


@override $ProfileStatsDtoCopyWith<$Res> get stats;

}
/// @nodoc
class __$StudentProfileDtoCopyWithImpl<$Res>
    implements _$StudentProfileDtoCopyWith<$Res> {
  __$StudentProfileDtoCopyWithImpl(this._self, this._then);

  final _StudentProfileDto _self;
  final $Res Function(_StudentProfileDto) _then;

/// Create a copy of StudentProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? schoolName = null,Object? campus = null,Object? bio = null,Object? interests = null,Object? stats = null,Object? isDiscreet = null,Object? avatarUrl = freezed,Object? memberSince = freezed,}) {
  return _then(_StudentProfileDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,schoolName: null == schoolName ? _self.schoolName : schoolName // ignore: cast_nullable_to_non_nullable
as String,campus: null == campus ? _self.campus : campus // ignore: cast_nullable_to_non_nullable
as String,bio: null == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String,interests: null == interests ? _self._interests : interests // ignore: cast_nullable_to_non_nullable
as List<String>,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as ProfileStatsDto,isDiscreet: null == isDiscreet ? _self.isDiscreet : isDiscreet // ignore: cast_nullable_to_non_nullable
as bool,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,memberSince: freezed == memberSince ? _self.memberSince : memberSince // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of StudentProfileDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileStatsDtoCopyWith<$Res> get stats {
  
  return $ProfileStatsDtoCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}
}

// dart format on
