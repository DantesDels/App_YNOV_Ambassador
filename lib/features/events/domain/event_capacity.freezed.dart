// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_capacity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventCapacity {

 int get totalSeats; int get seatsTaken; int get heldSeats; DateTime? get updatedAt;
/// Create a copy of EventCapacity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventCapacityCopyWith<EventCapacity> get copyWith => _$EventCapacityCopyWithImpl<EventCapacity>(this as EventCapacity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as EventCapacity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventCapacity&&(identical(other.totalSeats, _this.totalSeats) || other.totalSeats == _this.totalSeats)&&(identical(other.seatsTaken, _this.seatsTaken) || other.seatsTaken == _this.seatsTaken)&&(identical(other.heldSeats, _this.heldSeats) || other.heldSeats == _this.heldSeats)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt));
}


@override
int get hashCode {
  final _this = this as EventCapacity;
  return Object.hash(runtimeType,_this.totalSeats,_this.seatsTaken,_this.heldSeats,_this.updatedAt);
}

@override
String toString() {
  final _this = this as EventCapacity;
  return 'EventCapacity(totalSeats: ${_this.totalSeats}, seatsTaken: ${_this.seatsTaken}, heldSeats: ${_this.heldSeats}, updatedAt: ${_this.updatedAt})';
}


}

/// @nodoc
abstract mixin class $EventCapacityCopyWith<$Res>  {
  factory $EventCapacityCopyWith(EventCapacity value, $Res Function(EventCapacity) _then) = _$EventCapacityCopyWithImpl;
@useResult
$Res call({
 int totalSeats, int seatsTaken, int heldSeats, DateTime? updatedAt
});




}
/// @nodoc
class _$EventCapacityCopyWithImpl<$Res>
    implements $EventCapacityCopyWith<$Res> {
  _$EventCapacityCopyWithImpl(this._self, this._then);

  final EventCapacity _self;
  final $Res Function(EventCapacity) _then;

/// Create a copy of EventCapacity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalSeats = null,Object? seatsTaken = null,Object? heldSeats = null,Object? updatedAt = freezed,}) {
  return _then(EventCapacity(
totalSeats: null == totalSeats ? _self.totalSeats : totalSeats // ignore: cast_nullable_to_non_nullable
as int,seatsTaken: null == seatsTaken ? _self.seatsTaken : seatsTaken // ignore: cast_nullable_to_non_nullable
as int,heldSeats: null == heldSeats ? _self.heldSeats : heldSeats // ignore: cast_nullable_to_non_nullable
as int,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [EventCapacity].
extension EventCapacityPatterns on EventCapacity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventCapacity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventCapacity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventCapacity value)  $default,){
final _that = this;
switch (_that) {
case _EventCapacity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventCapacity value)?  $default,){
final _that = this;
switch (_that) {
case _EventCapacity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalSeats,  int seatsTaken,  int heldSeats,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventCapacity() when $default != null:
return $default(_that.totalSeats,_that.seatsTaken,_that.heldSeats,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalSeats,  int seatsTaken,  int heldSeats,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _EventCapacity():
return $default(_that.totalSeats,_that.seatsTaken,_that.heldSeats,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalSeats,  int seatsTaken,  int heldSeats,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _EventCapacity() when $default != null:
return $default(_that.totalSeats,_that.seatsTaken,_that.heldSeats,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _EventCapacity extends EventCapacity {
  const _EventCapacity({required this.totalSeats, required this.seatsTaken, this.heldSeats = 0, this.updatedAt}): super._();
  

@override final  int totalSeats;
@override final  int seatsTaken;
@override@JsonKey() final  int heldSeats;
@override final  DateTime? updatedAt;

/// Create a copy of EventCapacity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventCapacityCopyWith<_EventCapacity> get copyWith => __$EventCapacityCopyWithImpl<_EventCapacity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventCapacity&&(identical(other.totalSeats, totalSeats) || other.totalSeats == totalSeats)&&(identical(other.seatsTaken, seatsTaken) || other.seatsTaken == seatsTaken)&&(identical(other.heldSeats, heldSeats) || other.heldSeats == heldSeats)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,totalSeats,seatsTaken,heldSeats,updatedAt);
}

@override
String toString() {
    return 'EventCapacity(totalSeats: $totalSeats, seatsTaken: $seatsTaken, heldSeats: $heldSeats, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$EventCapacityCopyWith<$Res> implements $EventCapacityCopyWith<$Res> {
  factory _$EventCapacityCopyWith(_EventCapacity value, $Res Function(_EventCapacity) _then) = __$EventCapacityCopyWithImpl;
@override @useResult
$Res call({
 int totalSeats, int seatsTaken, int heldSeats, DateTime? updatedAt
});




}
/// @nodoc
class __$EventCapacityCopyWithImpl<$Res>
    implements _$EventCapacityCopyWith<$Res> {
  __$EventCapacityCopyWithImpl(this._self, this._then);

  final _EventCapacity _self;
  final $Res Function(_EventCapacity) _then;

/// Create a copy of EventCapacity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalSeats = null,Object? seatsTaken = null,Object? heldSeats = null,Object? updatedAt = freezed,}) {
  return _then(_EventCapacity(
totalSeats: null == totalSeats ? _self.totalSeats : totalSeats // ignore: cast_nullable_to_non_nullable
as int,seatsTaken: null == seatsTaken ? _self.seatsTaken : seatsTaken // ignore: cast_nullable_to_non_nullable
as int,heldSeats: null == heldSeats ? _self.heldSeats : heldSeats // ignore: cast_nullable_to_non_nullable
as int,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
