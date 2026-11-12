// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_capacity_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventCapacityDto {

 int get totalSeats; int get seatsTaken; int get heldSeats; DateTime? get updatedAt;
/// Create a copy of EventCapacityDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventCapacityDtoCopyWith<EventCapacityDto> get copyWith => _$EventCapacityDtoCopyWithImpl<EventCapacityDto>(this as EventCapacityDto, _$identity);

  /// Serializes this EventCapacityDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as EventCapacityDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventCapacityDto&&(identical(other.totalSeats, _this.totalSeats) || other.totalSeats == _this.totalSeats)&&(identical(other.seatsTaken, _this.seatsTaken) || other.seatsTaken == _this.seatsTaken)&&(identical(other.heldSeats, _this.heldSeats) || other.heldSeats == _this.heldSeats)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as EventCapacityDto;
  return Object.hash(runtimeType,_this.totalSeats,_this.seatsTaken,_this.heldSeats,_this.updatedAt);
}

@override
String toString() {
  final _this = this as EventCapacityDto;
  return 'EventCapacityDto(totalSeats: ${_this.totalSeats}, seatsTaken: ${_this.seatsTaken}, heldSeats: ${_this.heldSeats}, updatedAt: ${_this.updatedAt})';
}


}

/// @nodoc
abstract mixin class $EventCapacityDtoCopyWith<$Res>  {
  factory $EventCapacityDtoCopyWith(EventCapacityDto value, $Res Function(EventCapacityDto) _then) = _$EventCapacityDtoCopyWithImpl;
@useResult
$Res call({
 int totalSeats, int seatsTaken, int heldSeats, DateTime? updatedAt
});




}
/// @nodoc
class _$EventCapacityDtoCopyWithImpl<$Res>
    implements $EventCapacityDtoCopyWith<$Res> {
  _$EventCapacityDtoCopyWithImpl(this._self, this._then);

  final EventCapacityDto _self;
  final $Res Function(EventCapacityDto) _then;

/// Create a copy of EventCapacityDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalSeats = null,Object? seatsTaken = null,Object? heldSeats = null,Object? updatedAt = freezed,}) {
  return _then(EventCapacityDto(
totalSeats: null == totalSeats ? _self.totalSeats : totalSeats // ignore: cast_nullable_to_non_nullable
as int,seatsTaken: null == seatsTaken ? _self.seatsTaken : seatsTaken // ignore: cast_nullable_to_non_nullable
as int,heldSeats: null == heldSeats ? _self.heldSeats : heldSeats // ignore: cast_nullable_to_non_nullable
as int,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [EventCapacityDto].
extension EventCapacityDtoPatterns on EventCapacityDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventCapacityDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventCapacityDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventCapacityDto value)  $default,){
final _that = this;
switch (_that) {
case _EventCapacityDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventCapacityDto value)?  $default,){
final _that = this;
switch (_that) {
case _EventCapacityDto() when $default != null:
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
case _EventCapacityDto() when $default != null:
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
case _EventCapacityDto():
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
case _EventCapacityDto() when $default != null:
return $default(_that.totalSeats,_that.seatsTaken,_that.heldSeats,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _EventCapacityDto implements EventCapacityDto {
  const _EventCapacityDto({required this.totalSeats, required this.seatsTaken, this.heldSeats = 0, this.updatedAt});
  factory _EventCapacityDto.fromJson(Map<String, dynamic> json) => _$EventCapacityDtoFromJson(json);

@override final  int totalSeats;
@override final  int seatsTaken;
@override@JsonKey() final  int heldSeats;
@override final  DateTime? updatedAt;

/// Create a copy of EventCapacityDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventCapacityDtoCopyWith<_EventCapacityDto> get copyWith => __$EventCapacityDtoCopyWithImpl<_EventCapacityDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventCapacityDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventCapacityDto&&(identical(other.totalSeats, totalSeats) || other.totalSeats == totalSeats)&&(identical(other.seatsTaken, seatsTaken) || other.seatsTaken == seatsTaken)&&(identical(other.heldSeats, heldSeats) || other.heldSeats == heldSeats)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,totalSeats,seatsTaken,heldSeats,updatedAt);
}

@override
String toString() {
    return 'EventCapacityDto(totalSeats: $totalSeats, seatsTaken: $seatsTaken, heldSeats: $heldSeats, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$EventCapacityDtoCopyWith<$Res> implements $EventCapacityDtoCopyWith<$Res> {
  factory _$EventCapacityDtoCopyWith(_EventCapacityDto value, $Res Function(_EventCapacityDto) _then) = __$EventCapacityDtoCopyWithImpl;
@override @useResult
$Res call({
 int totalSeats, int seatsTaken, int heldSeats, DateTime? updatedAt
});




}
/// @nodoc
class __$EventCapacityDtoCopyWithImpl<$Res>
    implements _$EventCapacityDtoCopyWith<$Res> {
  __$EventCapacityDtoCopyWithImpl(this._self, this._then);

  final _EventCapacityDto _self;
  final $Res Function(_EventCapacityDto) _then;

/// Create a copy of EventCapacityDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalSeats = null,Object? seatsTaken = null,Object? heldSeats = null,Object? updatedAt = freezed,}) {
  return _then(_EventCapacityDto(
totalSeats: null == totalSeats ? _self.totalSeats : totalSeats // ignore: cast_nullable_to_non_nullable
as int,seatsTaken: null == seatsTaken ? _self.seatsTaken : seatsTaken // ignore: cast_nullable_to_non_nullable
as int,heldSeats: null == heldSeats ? _self.heldSeats : heldSeats // ignore: cast_nullable_to_non_nullable
as int,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
