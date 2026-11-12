// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'membership_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MembershipDto {

 String get organizer; bool get isActive; DateTime get memberSince; bool get isPublic; List<String> get perks; String? get memberNumber;
/// Create a copy of MembershipDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MembershipDtoCopyWith<MembershipDto> get copyWith => _$MembershipDtoCopyWithImpl<MembershipDto>(this as MembershipDto, _$identity);

  /// Serializes this MembershipDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MembershipDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MembershipDto&&(identical(other.organizer, _this.organizer) || other.organizer == _this.organizer)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive)&&(identical(other.memberSince, _this.memberSince) || other.memberSince == _this.memberSince)&&(identical(other.isPublic, _this.isPublic) || other.isPublic == _this.isPublic)&&const DeepCollectionEquality().equals(other.perks, _this.perks)&&(identical(other.memberNumber, _this.memberNumber) || other.memberNumber == _this.memberNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MembershipDto;
  return Object.hash(runtimeType,_this.organizer,_this.isActive,_this.memberSince,_this.isPublic,const DeepCollectionEquality().hash(_this.perks),_this.memberNumber);
}

@override
String toString() {
  final _this = this as MembershipDto;
  return 'MembershipDto(organizer: ${_this.organizer}, isActive: ${_this.isActive}, memberSince: ${_this.memberSince}, isPublic: ${_this.isPublic}, perks: ${_this.perks}, memberNumber: ${_this.memberNumber})';
}


}

/// @nodoc
abstract mixin class $MembershipDtoCopyWith<$Res>  {
  factory $MembershipDtoCopyWith(MembershipDto value, $Res Function(MembershipDto) _then) = _$MembershipDtoCopyWithImpl;
@useResult
$Res call({
 String organizer, bool isActive, DateTime memberSince, bool isPublic, List<String> perks, String? memberNumber
});




}
/// @nodoc
class _$MembershipDtoCopyWithImpl<$Res>
    implements $MembershipDtoCopyWith<$Res> {
  _$MembershipDtoCopyWithImpl(this._self, this._then);

  final MembershipDto _self;
  final $Res Function(MembershipDto) _then;

/// Create a copy of MembershipDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? organizer = null,Object? isActive = null,Object? memberSince = null,Object? isPublic = null,Object? perks = null,Object? memberNumber = freezed,}) {
  return _then(MembershipDto(
organizer: null == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,memberSince: null == memberSince ? _self.memberSince : memberSince // ignore: cast_nullable_to_non_nullable
as DateTime,isPublic: null == isPublic ? _self.isPublic : isPublic // ignore: cast_nullable_to_non_nullable
as bool,perks: null == perks ? _self.perks : perks // ignore: cast_nullable_to_non_nullable
as List<String>,memberNumber: freezed == memberNumber ? _self.memberNumber : memberNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MembershipDto].
extension MembershipDtoPatterns on MembershipDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MembershipDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MembershipDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MembershipDto value)  $default,){
final _that = this;
switch (_that) {
case _MembershipDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MembershipDto value)?  $default,){
final _that = this;
switch (_that) {
case _MembershipDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String organizer,  bool isActive,  DateTime memberSince,  bool isPublic,  List<String> perks,  String? memberNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MembershipDto() when $default != null:
return $default(_that.organizer,_that.isActive,_that.memberSince,_that.isPublic,_that.perks,_that.memberNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String organizer,  bool isActive,  DateTime memberSince,  bool isPublic,  List<String> perks,  String? memberNumber)  $default,) {final _that = this;
switch (_that) {
case _MembershipDto():
return $default(_that.organizer,_that.isActive,_that.memberSince,_that.isPublic,_that.perks,_that.memberNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String organizer,  bool isActive,  DateTime memberSince,  bool isPublic,  List<String> perks,  String? memberNumber)?  $default,) {final _that = this;
switch (_that) {
case _MembershipDto() when $default != null:
return $default(_that.organizer,_that.isActive,_that.memberSince,_that.isPublic,_that.perks,_that.memberNumber);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _MembershipDto implements MembershipDto {
  const _MembershipDto({required this.organizer, required this.isActive, required this.memberSince, this.isPublic = false,  List<String> perks = const <String>[], this.memberNumber}): _perks = perks;
  factory _MembershipDto.fromJson(Map<String, dynamic> json) => _$MembershipDtoFromJson(json);

@override final  String organizer;
@override final  bool isActive;
@override final  DateTime memberSince;
@override@JsonKey() final  bool isPublic;
 final  List<String> _perks;
@override@JsonKey() List<String> get perks {
  if (_perks is EqualUnmodifiableListView) return _perks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_perks);
}

@override final  String? memberNumber;

/// Create a copy of MembershipDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MembershipDtoCopyWith<_MembershipDto> get copyWith => __$MembershipDtoCopyWithImpl<_MembershipDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MembershipDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MembershipDto&&(identical(other.organizer, organizer) || other.organizer == organizer)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.memberSince, memberSince) || other.memberSince == memberSince)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic)&&const DeepCollectionEquality().equals(other.perks, _perks)&&(identical(other.memberNumber, memberNumber) || other.memberNumber == memberNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,organizer,isActive,memberSince,isPublic,const DeepCollectionEquality().hash(_perks),memberNumber);
}

@override
String toString() {
    return 'MembershipDto(organizer: $organizer, isActive: $isActive, memberSince: $memberSince, isPublic: $isPublic, perks: $perks, memberNumber: $memberNumber)';
}


}

/// @nodoc
abstract mixin class _$MembershipDtoCopyWith<$Res> implements $MembershipDtoCopyWith<$Res> {
  factory _$MembershipDtoCopyWith(_MembershipDto value, $Res Function(_MembershipDto) _then) = __$MembershipDtoCopyWithImpl;
@override @useResult
$Res call({
 String organizer, bool isActive, DateTime memberSince, bool isPublic, List<String> perks, String? memberNumber
});




}
/// @nodoc
class __$MembershipDtoCopyWithImpl<$Res>
    implements _$MembershipDtoCopyWith<$Res> {
  __$MembershipDtoCopyWithImpl(this._self, this._then);

  final _MembershipDto _self;
  final $Res Function(_MembershipDto) _then;

/// Create a copy of MembershipDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? organizer = null,Object? isActive = null,Object? memberSince = null,Object? isPublic = null,Object? perks = null,Object? memberNumber = freezed,}) {
  return _then(_MembershipDto(
organizer: null == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,memberSince: null == memberSince ? _self.memberSince : memberSince // ignore: cast_nullable_to_non_nullable
as DateTime,isPublic: null == isPublic ? _self.isPublic : isPublic // ignore: cast_nullable_to_non_nullable
as bool,perks: null == perks ? _self._perks : perks // ignore: cast_nullable_to_non_nullable
as List<String>,memberNumber: freezed == memberNumber ? _self.memberNumber : memberNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
