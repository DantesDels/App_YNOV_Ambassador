// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'membership.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Membership {

 OrganizerType get organizer; bool get isActive; DateTime get memberSince; bool get isPublic; List<String> get perks; String? get memberNumber;
/// Create a copy of Membership
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MembershipCopyWith<Membership> get copyWith => _$MembershipCopyWithImpl<Membership>(this as Membership, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Membership;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Membership&&(identical(other.organizer, _this.organizer) || other.organizer == _this.organizer)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive)&&(identical(other.memberSince, _this.memberSince) || other.memberSince == _this.memberSince)&&(identical(other.isPublic, _this.isPublic) || other.isPublic == _this.isPublic)&&const DeepCollectionEquality().equals(other.perks, _this.perks)&&(identical(other.memberNumber, _this.memberNumber) || other.memberNumber == _this.memberNumber));
}


@override
int get hashCode {
  final _this = this as Membership;
  return Object.hash(runtimeType,_this.organizer,_this.isActive,_this.memberSince,_this.isPublic,const DeepCollectionEquality().hash(_this.perks),_this.memberNumber);
}

@override
String toString() {
  final _this = this as Membership;
  return 'Membership(organizer: ${_this.organizer}, isActive: ${_this.isActive}, memberSince: ${_this.memberSince}, isPublic: ${_this.isPublic}, perks: ${_this.perks}, memberNumber: ${_this.memberNumber})';
}


}

/// @nodoc
abstract mixin class $MembershipCopyWith<$Res>  {
  factory $MembershipCopyWith(Membership value, $Res Function(Membership) _then) = _$MembershipCopyWithImpl;
@useResult
$Res call({
 OrganizerType organizer, bool isActive, DateTime memberSince, bool isPublic, List<String> perks, String? memberNumber
});




}
/// @nodoc
class _$MembershipCopyWithImpl<$Res>
    implements $MembershipCopyWith<$Res> {
  _$MembershipCopyWithImpl(this._self, this._then);

  final Membership _self;
  final $Res Function(Membership) _then;

/// Create a copy of Membership
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? organizer = null,Object? isActive = null,Object? memberSince = null,Object? isPublic = null,Object? perks = null,Object? memberNumber = freezed,}) {
  return _then(Membership(
organizer: null == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as OrganizerType,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,memberSince: null == memberSince ? _self.memberSince : memberSince // ignore: cast_nullable_to_non_nullable
as DateTime,isPublic: null == isPublic ? _self.isPublic : isPublic // ignore: cast_nullable_to_non_nullable
as bool,perks: null == perks ? _self.perks : perks // ignore: cast_nullable_to_non_nullable
as List<String>,memberNumber: freezed == memberNumber ? _self.memberNumber : memberNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Membership].
extension MembershipPatterns on Membership {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Membership value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Membership() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Membership value)  $default,){
final _that = this;
switch (_that) {
case _Membership():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Membership value)?  $default,){
final _that = this;
switch (_that) {
case _Membership() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( OrganizerType organizer,  bool isActive,  DateTime memberSince,  bool isPublic,  List<String> perks,  String? memberNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Membership() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( OrganizerType organizer,  bool isActive,  DateTime memberSince,  bool isPublic,  List<String> perks,  String? memberNumber)  $default,) {final _that = this;
switch (_that) {
case _Membership():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( OrganizerType organizer,  bool isActive,  DateTime memberSince,  bool isPublic,  List<String> perks,  String? memberNumber)?  $default,) {final _that = this;
switch (_that) {
case _Membership() when $default != null:
return $default(_that.organizer,_that.isActive,_that.memberSince,_that.isPublic,_that.perks,_that.memberNumber);case _:
  return null;

}
}

}

/// @nodoc


class _Membership extends Membership {
  const _Membership({required this.organizer, required this.isActive, required this.memberSince, this.isPublic = false,  List<String> perks = const <String>[], this.memberNumber}): _perks = perks,super._();
  

@override final  OrganizerType organizer;
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

/// Create a copy of Membership
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MembershipCopyWith<_Membership> get copyWith => __$MembershipCopyWithImpl<_Membership>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Membership&&(identical(other.organizer, organizer) || other.organizer == organizer)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.memberSince, memberSince) || other.memberSince == memberSince)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic)&&const DeepCollectionEquality().equals(other.perks, _perks)&&(identical(other.memberNumber, memberNumber) || other.memberNumber == memberNumber));
}


@override
int get hashCode {
    return Object.hash(runtimeType,organizer,isActive,memberSince,isPublic,const DeepCollectionEquality().hash(_perks),memberNumber);
}

@override
String toString() {
    return 'Membership(organizer: $organizer, isActive: $isActive, memberSince: $memberSince, isPublic: $isPublic, perks: $perks, memberNumber: $memberNumber)';
}


}

/// @nodoc
abstract mixin class _$MembershipCopyWith<$Res> implements $MembershipCopyWith<$Res> {
  factory _$MembershipCopyWith(_Membership value, $Res Function(_Membership) _then) = __$MembershipCopyWithImpl;
@override @useResult
$Res call({
 OrganizerType organizer, bool isActive, DateTime memberSince, bool isPublic, List<String> perks, String? memberNumber
});




}
/// @nodoc
class __$MembershipCopyWithImpl<$Res>
    implements _$MembershipCopyWith<$Res> {
  __$MembershipCopyWithImpl(this._self, this._then);

  final _Membership _self;
  final $Res Function(_Membership) _then;

/// Create a copy of Membership
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? organizer = null,Object? isActive = null,Object? memberSince = null,Object? isPublic = null,Object? perks = null,Object? memberNumber = freezed,}) {
  return _then(_Membership(
organizer: null == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as OrganizerType,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,memberSince: null == memberSince ? _self.memberSince : memberSince // ignore: cast_nullable_to_non_nullable
as DateTime,isPublic: null == isPublic ? _self.isPublic : isPublic // ignore: cast_nullable_to_non_nullable
as bool,perks: null == perks ? _self._perks : perks // ignore: cast_nullable_to_non_nullable
as List<String>,memberNumber: freezed == memberNumber ? _self.memberNumber : memberNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
