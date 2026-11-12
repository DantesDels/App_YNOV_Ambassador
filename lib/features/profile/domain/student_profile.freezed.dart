// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileStats {

 int get ticketsCount; int get eventsAttended; int get friendsCount; int get squadsJoined;
/// Create a copy of ProfileStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileStatsCopyWith<ProfileStats> get copyWith => _$ProfileStatsCopyWithImpl<ProfileStats>(this as ProfileStats, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProfileStats;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileStats&&(identical(other.ticketsCount, _this.ticketsCount) || other.ticketsCount == _this.ticketsCount)&&(identical(other.eventsAttended, _this.eventsAttended) || other.eventsAttended == _this.eventsAttended)&&(identical(other.friendsCount, _this.friendsCount) || other.friendsCount == _this.friendsCount)&&(identical(other.squadsJoined, _this.squadsJoined) || other.squadsJoined == _this.squadsJoined));
}


@override
int get hashCode {
  final _this = this as ProfileStats;
  return Object.hash(runtimeType,_this.ticketsCount,_this.eventsAttended,_this.friendsCount,_this.squadsJoined);
}

@override
String toString() {
  final _this = this as ProfileStats;
  return 'ProfileStats(ticketsCount: ${_this.ticketsCount}, eventsAttended: ${_this.eventsAttended}, friendsCount: ${_this.friendsCount}, squadsJoined: ${_this.squadsJoined})';
}


}

/// @nodoc
abstract mixin class $ProfileStatsCopyWith<$Res>  {
  factory $ProfileStatsCopyWith(ProfileStats value, $Res Function(ProfileStats) _then) = _$ProfileStatsCopyWithImpl;
@useResult
$Res call({
 int ticketsCount, int eventsAttended, int friendsCount, int squadsJoined
});




}
/// @nodoc
class _$ProfileStatsCopyWithImpl<$Res>
    implements $ProfileStatsCopyWith<$Res> {
  _$ProfileStatsCopyWithImpl(this._self, this._then);

  final ProfileStats _self;
  final $Res Function(ProfileStats) _then;

/// Create a copy of ProfileStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketsCount = null,Object? eventsAttended = null,Object? friendsCount = null,Object? squadsJoined = null,}) {
  return _then(ProfileStats(
ticketsCount: null == ticketsCount ? _self.ticketsCount : ticketsCount // ignore: cast_nullable_to_non_nullable
as int,eventsAttended: null == eventsAttended ? _self.eventsAttended : eventsAttended // ignore: cast_nullable_to_non_nullable
as int,friendsCount: null == friendsCount ? _self.friendsCount : friendsCount // ignore: cast_nullable_to_non_nullable
as int,squadsJoined: null == squadsJoined ? _self.squadsJoined : squadsJoined // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileStats].
extension ProfileStatsPatterns on ProfileStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileStats value)  $default,){
final _that = this;
switch (_that) {
case _ProfileStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileStats value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticketsCount,  int eventsAttended,  int friendsCount,  int squadsJoined)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileStats() when $default != null:
return $default(_that.ticketsCount,_that.eventsAttended,_that.friendsCount,_that.squadsJoined);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticketsCount,  int eventsAttended,  int friendsCount,  int squadsJoined)  $default,) {final _that = this;
switch (_that) {
case _ProfileStats():
return $default(_that.ticketsCount,_that.eventsAttended,_that.friendsCount,_that.squadsJoined);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticketsCount,  int eventsAttended,  int friendsCount,  int squadsJoined)?  $default,) {final _that = this;
switch (_that) {
case _ProfileStats() when $default != null:
return $default(_that.ticketsCount,_that.eventsAttended,_that.friendsCount,_that.squadsJoined);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileStats extends ProfileStats {
  const _ProfileStats({this.ticketsCount = 0, this.eventsAttended = 0, this.friendsCount = 0, this.squadsJoined = 0}): super._();
  

@override@JsonKey() final  int ticketsCount;
@override@JsonKey() final  int eventsAttended;
@override@JsonKey() final  int friendsCount;
@override@JsonKey() final  int squadsJoined;

/// Create a copy of ProfileStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileStatsCopyWith<_ProfileStats> get copyWith => __$ProfileStatsCopyWithImpl<_ProfileStats>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileStats&&(identical(other.ticketsCount, ticketsCount) || other.ticketsCount == ticketsCount)&&(identical(other.eventsAttended, eventsAttended) || other.eventsAttended == eventsAttended)&&(identical(other.friendsCount, friendsCount) || other.friendsCount == friendsCount)&&(identical(other.squadsJoined, squadsJoined) || other.squadsJoined == squadsJoined));
}


@override
int get hashCode {
    return Object.hash(runtimeType,ticketsCount,eventsAttended,friendsCount,squadsJoined);
}

@override
String toString() {
    return 'ProfileStats(ticketsCount: $ticketsCount, eventsAttended: $eventsAttended, friendsCount: $friendsCount, squadsJoined: $squadsJoined)';
}


}

/// @nodoc
abstract mixin class _$ProfileStatsCopyWith<$Res> implements $ProfileStatsCopyWith<$Res> {
  factory _$ProfileStatsCopyWith(_ProfileStats value, $Res Function(_ProfileStats) _then) = __$ProfileStatsCopyWithImpl;
@override @useResult
$Res call({
 int ticketsCount, int eventsAttended, int friendsCount, int squadsJoined
});




}
/// @nodoc
class __$ProfileStatsCopyWithImpl<$Res>
    implements _$ProfileStatsCopyWith<$Res> {
  __$ProfileStatsCopyWithImpl(this._self, this._then);

  final _ProfileStats _self;
  final $Res Function(_ProfileStats) _then;

/// Create a copy of ProfileStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketsCount = null,Object? eventsAttended = null,Object? friendsCount = null,Object? squadsJoined = null,}) {
  return _then(_ProfileStats(
ticketsCount: null == ticketsCount ? _self.ticketsCount : ticketsCount // ignore: cast_nullable_to_non_nullable
as int,eventsAttended: null == eventsAttended ? _self.eventsAttended : eventsAttended // ignore: cast_nullable_to_non_nullable
as int,friendsCount: null == friendsCount ? _self.friendsCount : friendsCount // ignore: cast_nullable_to_non_nullable
as int,squadsJoined: null == squadsJoined ? _self.squadsJoined : squadsJoined // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$StudentProfile {

 String get id; String get firstName; String get lastName; String get email; String get schoolName; String get campus; String get bio; List<String> get interests; ProfileStats get stats; bool get isDiscreet; String? get avatarUrl; DateTime? get memberSince;
/// Create a copy of StudentProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentProfileCopyWith<StudentProfile> get copyWith => _$StudentProfileCopyWithImpl<StudentProfile>(this as StudentProfile, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as StudentProfile;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentProfile&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.firstName, _this.firstName) || other.firstName == _this.firstName)&&(identical(other.lastName, _this.lastName) || other.lastName == _this.lastName)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.schoolName, _this.schoolName) || other.schoolName == _this.schoolName)&&(identical(other.campus, _this.campus) || other.campus == _this.campus)&&(identical(other.bio, _this.bio) || other.bio == _this.bio)&&const DeepCollectionEquality().equals(other.interests, _this.interests)&&(identical(other.stats, _this.stats) || other.stats == _this.stats)&&(identical(other.isDiscreet, _this.isDiscreet) || other.isDiscreet == _this.isDiscreet)&&(identical(other.avatarUrl, _this.avatarUrl) || other.avatarUrl == _this.avatarUrl)&&(identical(other.memberSince, _this.memberSince) || other.memberSince == _this.memberSince));
}


@override
int get hashCode {
  final _this = this as StudentProfile;
  return Object.hash(runtimeType,_this.id,_this.firstName,_this.lastName,_this.email,_this.schoolName,_this.campus,_this.bio,const DeepCollectionEquality().hash(_this.interests),_this.stats,_this.isDiscreet,_this.avatarUrl,_this.memberSince);
}

@override
String toString() {
  final _this = this as StudentProfile;
  return 'StudentProfile(id: ${_this.id}, firstName: ${_this.firstName}, lastName: ${_this.lastName}, email: ${_this.email}, schoolName: ${_this.schoolName}, campus: ${_this.campus}, bio: ${_this.bio}, interests: ${_this.interests}, stats: ${_this.stats}, isDiscreet: ${_this.isDiscreet}, avatarUrl: ${_this.avatarUrl}, memberSince: ${_this.memberSince})';
}


}

/// @nodoc
abstract mixin class $StudentProfileCopyWith<$Res>  {
  factory $StudentProfileCopyWith(StudentProfile value, $Res Function(StudentProfile) _then) = _$StudentProfileCopyWithImpl;
@useResult
$Res call({
 String id, String firstName, String lastName, String email, String schoolName, String campus, String bio, List<String> interests, ProfileStats stats, bool isDiscreet, String? avatarUrl, DateTime? memberSince
});


$ProfileStatsCopyWith<$Res> get stats;

}
/// @nodoc
class _$StudentProfileCopyWithImpl<$Res>
    implements $StudentProfileCopyWith<$Res> {
  _$StudentProfileCopyWithImpl(this._self, this._then);

  final StudentProfile _self;
  final $Res Function(StudentProfile) _then;

/// Create a copy of StudentProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? schoolName = null,Object? campus = null,Object? bio = null,Object? interests = null,Object? stats = null,Object? isDiscreet = null,Object? avatarUrl = freezed,Object? memberSince = freezed,}) {
  return _then(StudentProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,schoolName: null == schoolName ? _self.schoolName : schoolName // ignore: cast_nullable_to_non_nullable
as String,campus: null == campus ? _self.campus : campus // ignore: cast_nullable_to_non_nullable
as String,bio: null == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String,interests: null == interests ? _self.interests : interests // ignore: cast_nullable_to_non_nullable
as List<String>,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as ProfileStats,isDiscreet: null == isDiscreet ? _self.isDiscreet : isDiscreet // ignore: cast_nullable_to_non_nullable
as bool,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,memberSince: freezed == memberSince ? _self.memberSince : memberSince // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of StudentProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileStatsCopyWith<$Res> get stats {
  
  return $ProfileStatsCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}
}


/// Adds pattern-matching-related methods to [StudentProfile].
extension StudentProfilePatterns on StudentProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StudentProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StudentProfile value)  $default,){
final _that = this;
switch (_that) {
case _StudentProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StudentProfile value)?  $default,){
final _that = this;
switch (_that) {
case _StudentProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String email,  String schoolName,  String campus,  String bio,  List<String> interests,  ProfileStats stats,  bool isDiscreet,  String? avatarUrl,  DateTime? memberSince)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentProfile() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String email,  String schoolName,  String campus,  String bio,  List<String> interests,  ProfileStats stats,  bool isDiscreet,  String? avatarUrl,  DateTime? memberSince)  $default,) {final _that = this;
switch (_that) {
case _StudentProfile():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String firstName,  String lastName,  String email,  String schoolName,  String campus,  String bio,  List<String> interests,  ProfileStats stats,  bool isDiscreet,  String? avatarUrl,  DateTime? memberSince)?  $default,) {final _that = this;
switch (_that) {
case _StudentProfile() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.schoolName,_that.campus,_that.bio,_that.interests,_that.stats,_that.isDiscreet,_that.avatarUrl,_that.memberSince);case _:
  return null;

}
}

}

/// @nodoc


class _StudentProfile extends StudentProfile {
  const _StudentProfile({required this.id, required this.firstName, required this.lastName, required this.email, required this.schoolName, this.campus = '', this.bio = '',  List<String> interests = const <String>[], this.stats = const ProfileStats(), this.isDiscreet = false, this.avatarUrl, this.memberSince}): _interests = interests,super._();
  

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

@override@JsonKey() final  ProfileStats stats;
@override@JsonKey() final  bool isDiscreet;
@override final  String? avatarUrl;
@override final  DateTime? memberSince;

/// Create a copy of StudentProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentProfileCopyWith<_StudentProfile> get copyWith => __$StudentProfileCopyWithImpl<_StudentProfile>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.schoolName, schoolName) || other.schoolName == schoolName)&&(identical(other.campus, campus) || other.campus == campus)&&(identical(other.bio, bio) || other.bio == bio)&&const DeepCollectionEquality().equals(other.interests, _interests)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.isDiscreet, isDiscreet) || other.isDiscreet == isDiscreet)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.memberSince, memberSince) || other.memberSince == memberSince));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,firstName,lastName,email,schoolName,campus,bio,const DeepCollectionEquality().hash(_interests),stats,isDiscreet,avatarUrl,memberSince);
}

@override
String toString() {
    return 'StudentProfile(id: $id, firstName: $firstName, lastName: $lastName, email: $email, schoolName: $schoolName, campus: $campus, bio: $bio, interests: $interests, stats: $stats, isDiscreet: $isDiscreet, avatarUrl: $avatarUrl, memberSince: $memberSince)';
}


}

/// @nodoc
abstract mixin class _$StudentProfileCopyWith<$Res> implements $StudentProfileCopyWith<$Res> {
  factory _$StudentProfileCopyWith(_StudentProfile value, $Res Function(_StudentProfile) _then) = __$StudentProfileCopyWithImpl;
@override @useResult
$Res call({
 String id, String firstName, String lastName, String email, String schoolName, String campus, String bio, List<String> interests, ProfileStats stats, bool isDiscreet, String? avatarUrl, DateTime? memberSince
});


@override $ProfileStatsCopyWith<$Res> get stats;

}
/// @nodoc
class __$StudentProfileCopyWithImpl<$Res>
    implements _$StudentProfileCopyWith<$Res> {
  __$StudentProfileCopyWithImpl(this._self, this._then);

  final _StudentProfile _self;
  final $Res Function(_StudentProfile) _then;

/// Create a copy of StudentProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? schoolName = null,Object? campus = null,Object? bio = null,Object? interests = null,Object? stats = null,Object? isDiscreet = null,Object? avatarUrl = freezed,Object? memberSince = freezed,}) {
  return _then(_StudentProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,schoolName: null == schoolName ? _self.schoolName : schoolName // ignore: cast_nullable_to_non_nullable
as String,campus: null == campus ? _self.campus : campus // ignore: cast_nullable_to_non_nullable
as String,bio: null == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String,interests: null == interests ? _self._interests : interests // ignore: cast_nullable_to_non_nullable
as List<String>,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as ProfileStats,isDiscreet: null == isDiscreet ? _self.isDiscreet : isDiscreet // ignore: cast_nullable_to_non_nullable
as bool,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,memberSince: freezed == memberSince ? _self.memberSince : memberSince // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of StudentProfile
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileStatsCopyWith<$Res> get stats {
  
  return $ProfileStatsCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}
}

// dart format on
