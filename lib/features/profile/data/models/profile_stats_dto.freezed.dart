// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_stats_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileStatsDto {

 int get ticketsCount; int get eventsAttended; int get friendsCount; int get squadsJoined;
/// Create a copy of ProfileStatsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileStatsDtoCopyWith<ProfileStatsDto> get copyWith => _$ProfileStatsDtoCopyWithImpl<ProfileStatsDto>(this as ProfileStatsDto, _$identity);

  /// Serializes this ProfileStatsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProfileStatsDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileStatsDto&&(identical(other.ticketsCount, _this.ticketsCount) || other.ticketsCount == _this.ticketsCount)&&(identical(other.eventsAttended, _this.eventsAttended) || other.eventsAttended == _this.eventsAttended)&&(identical(other.friendsCount, _this.friendsCount) || other.friendsCount == _this.friendsCount)&&(identical(other.squadsJoined, _this.squadsJoined) || other.squadsJoined == _this.squadsJoined));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProfileStatsDto;
  return Object.hash(runtimeType,_this.ticketsCount,_this.eventsAttended,_this.friendsCount,_this.squadsJoined);
}

@override
String toString() {
  final _this = this as ProfileStatsDto;
  return 'ProfileStatsDto(ticketsCount: ${_this.ticketsCount}, eventsAttended: ${_this.eventsAttended}, friendsCount: ${_this.friendsCount}, squadsJoined: ${_this.squadsJoined})';
}


}

/// @nodoc
abstract mixin class $ProfileStatsDtoCopyWith<$Res>  {
  factory $ProfileStatsDtoCopyWith(ProfileStatsDto value, $Res Function(ProfileStatsDto) _then) = _$ProfileStatsDtoCopyWithImpl;
@useResult
$Res call({
 int ticketsCount, int eventsAttended, int friendsCount, int squadsJoined
});




}
/// @nodoc
class _$ProfileStatsDtoCopyWithImpl<$Res>
    implements $ProfileStatsDtoCopyWith<$Res> {
  _$ProfileStatsDtoCopyWithImpl(this._self, this._then);

  final ProfileStatsDto _self;
  final $Res Function(ProfileStatsDto) _then;

/// Create a copy of ProfileStatsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketsCount = null,Object? eventsAttended = null,Object? friendsCount = null,Object? squadsJoined = null,}) {
  return _then(ProfileStatsDto(
ticketsCount: null == ticketsCount ? _self.ticketsCount : ticketsCount // ignore: cast_nullable_to_non_nullable
as int,eventsAttended: null == eventsAttended ? _self.eventsAttended : eventsAttended // ignore: cast_nullable_to_non_nullable
as int,friendsCount: null == friendsCount ? _self.friendsCount : friendsCount // ignore: cast_nullable_to_non_nullable
as int,squadsJoined: null == squadsJoined ? _self.squadsJoined : squadsJoined // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileStatsDto].
extension ProfileStatsDtoPatterns on ProfileStatsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileStatsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileStatsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileStatsDto value)  $default,){
final _that = this;
switch (_that) {
case _ProfileStatsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileStatsDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileStatsDto() when $default != null:
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
case _ProfileStatsDto() when $default != null:
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
case _ProfileStatsDto():
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
case _ProfileStatsDto() when $default != null:
return $default(_that.ticketsCount,_that.eventsAttended,_that.friendsCount,_that.squadsJoined);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ProfileStatsDto implements ProfileStatsDto {
  const _ProfileStatsDto({this.ticketsCount = 0, this.eventsAttended = 0, this.friendsCount = 0, this.squadsJoined = 0});
  factory _ProfileStatsDto.fromJson(Map<String, dynamic> json) => _$ProfileStatsDtoFromJson(json);

@override@JsonKey() final  int ticketsCount;
@override@JsonKey() final  int eventsAttended;
@override@JsonKey() final  int friendsCount;
@override@JsonKey() final  int squadsJoined;

/// Create a copy of ProfileStatsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileStatsDtoCopyWith<_ProfileStatsDto> get copyWith => __$ProfileStatsDtoCopyWithImpl<_ProfileStatsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileStatsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileStatsDto&&(identical(other.ticketsCount, ticketsCount) || other.ticketsCount == ticketsCount)&&(identical(other.eventsAttended, eventsAttended) || other.eventsAttended == eventsAttended)&&(identical(other.friendsCount, friendsCount) || other.friendsCount == friendsCount)&&(identical(other.squadsJoined, squadsJoined) || other.squadsJoined == squadsJoined));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,ticketsCount,eventsAttended,friendsCount,squadsJoined);
}

@override
String toString() {
    return 'ProfileStatsDto(ticketsCount: $ticketsCount, eventsAttended: $eventsAttended, friendsCount: $friendsCount, squadsJoined: $squadsJoined)';
}


}

/// @nodoc
abstract mixin class _$ProfileStatsDtoCopyWith<$Res> implements $ProfileStatsDtoCopyWith<$Res> {
  factory _$ProfileStatsDtoCopyWith(_ProfileStatsDto value, $Res Function(_ProfileStatsDto) _then) = __$ProfileStatsDtoCopyWithImpl;
@override @useResult
$Res call({
 int ticketsCount, int eventsAttended, int friendsCount, int squadsJoined
});




}
/// @nodoc
class __$ProfileStatsDtoCopyWithImpl<$Res>
    implements _$ProfileStatsDtoCopyWith<$Res> {
  __$ProfileStatsDtoCopyWithImpl(this._self, this._then);

  final _ProfileStatsDto _self;
  final $Res Function(_ProfileStatsDto) _then;

/// Create a copy of ProfileStatsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketsCount = null,Object? eventsAttended = null,Object? friendsCount = null,Object? squadsJoined = null,}) {
  return _then(_ProfileStatsDto(
ticketsCount: null == ticketsCount ? _self.ticketsCount : ticketsCount // ignore: cast_nullable_to_non_nullable
as int,eventsAttended: null == eventsAttended ? _self.eventsAttended : eventsAttended // ignore: cast_nullable_to_non_nullable
as int,friendsCount: null == friendsCount ? _self.friendsCount : friendsCount // ignore: cast_nullable_to_non_nullable
as int,squadsJoined: null == squadsJoined ? _self.squadsJoined : squadsJoined // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
