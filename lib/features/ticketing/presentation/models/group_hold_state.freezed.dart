// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_hold_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GroupHoldState {

 bool get isSubmitting; int get seats; GroupHoldReservation? get reservation; String? get errorMessage;
/// Create a copy of GroupHoldState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupHoldStateCopyWith<GroupHoldState> get copyWith => _$GroupHoldStateCopyWithImpl<GroupHoldState>(this as GroupHoldState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GroupHoldState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupHoldState&&(identical(other.isSubmitting, _this.isSubmitting) || other.isSubmitting == _this.isSubmitting)&&(identical(other.seats, _this.seats) || other.seats == _this.seats)&&(identical(other.reservation, _this.reservation) || other.reservation == _this.reservation)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage));
}


@override
int get hashCode {
  final _this = this as GroupHoldState;
  return Object.hash(runtimeType,_this.isSubmitting,_this.seats,_this.reservation,_this.errorMessage);
}

@override
String toString() {
  final _this = this as GroupHoldState;
  return 'GroupHoldState(isSubmitting: ${_this.isSubmitting}, seats: ${_this.seats}, reservation: ${_this.reservation}, errorMessage: ${_this.errorMessage})';
}


}

/// @nodoc
abstract mixin class $GroupHoldStateCopyWith<$Res>  {
  factory $GroupHoldStateCopyWith(GroupHoldState value, $Res Function(GroupHoldState) _then) = _$GroupHoldStateCopyWithImpl;
@useResult
$Res call({
 bool isSubmitting, int seats, GroupHoldReservation? reservation, String? errorMessage
});


$GroupHoldReservationCopyWith<$Res>? get reservation;

}
/// @nodoc
class _$GroupHoldStateCopyWithImpl<$Res>
    implements $GroupHoldStateCopyWith<$Res> {
  _$GroupHoldStateCopyWithImpl(this._self, this._then);

  final GroupHoldState _self;
  final $Res Function(GroupHoldState) _then;

/// Create a copy of GroupHoldState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSubmitting = null,Object? seats = null,Object? reservation = freezed,Object? errorMessage = freezed,}) {
  return _then(GroupHoldState(
isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,seats: null == seats ? _self.seats : seats // ignore: cast_nullable_to_non_nullable
as int,reservation: freezed == reservation ? _self.reservation : reservation // ignore: cast_nullable_to_non_nullable
as GroupHoldReservation?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of GroupHoldState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupHoldReservationCopyWith<$Res>? get reservation {
    if (_self.reservation == null) {
    return null;
  }

  return $GroupHoldReservationCopyWith<$Res>(_self.reservation!, (value) {
    return _then(_self.copyWith(reservation: value));
  });
}
}


/// Adds pattern-matching-related methods to [GroupHoldState].
extension GroupHoldStatePatterns on GroupHoldState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupHoldState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupHoldState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupHoldState value)  $default,){
final _that = this;
switch (_that) {
case _GroupHoldState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupHoldState value)?  $default,){
final _that = this;
switch (_that) {
case _GroupHoldState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isSubmitting,  int seats,  GroupHoldReservation? reservation,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupHoldState() when $default != null:
return $default(_that.isSubmitting,_that.seats,_that.reservation,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isSubmitting,  int seats,  GroupHoldReservation? reservation,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _GroupHoldState():
return $default(_that.isSubmitting,_that.seats,_that.reservation,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isSubmitting,  int seats,  GroupHoldReservation? reservation,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _GroupHoldState() when $default != null:
return $default(_that.isSubmitting,_that.seats,_that.reservation,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _GroupHoldState extends GroupHoldState {
  const _GroupHoldState({this.isSubmitting = false, this.seats = 1, this.reservation, this.errorMessage}): super._();
  

@override@JsonKey() final  bool isSubmitting;
@override@JsonKey() final  int seats;
@override final  GroupHoldReservation? reservation;
@override final  String? errorMessage;

/// Create a copy of GroupHoldState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupHoldStateCopyWith<_GroupHoldState> get copyWith => __$GroupHoldStateCopyWithImpl<_GroupHoldState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupHoldState&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.seats, seats) || other.seats == seats)&&(identical(other.reservation, reservation) || other.reservation == reservation)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isSubmitting,seats,reservation,errorMessage);
}

@override
String toString() {
    return 'GroupHoldState(isSubmitting: $isSubmitting, seats: $seats, reservation: $reservation, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$GroupHoldStateCopyWith<$Res> implements $GroupHoldStateCopyWith<$Res> {
  factory _$GroupHoldStateCopyWith(_GroupHoldState value, $Res Function(_GroupHoldState) _then) = __$GroupHoldStateCopyWithImpl;
@override @useResult
$Res call({
 bool isSubmitting, int seats, GroupHoldReservation? reservation, String? errorMessage
});


@override $GroupHoldReservationCopyWith<$Res>? get reservation;

}
/// @nodoc
class __$GroupHoldStateCopyWithImpl<$Res>
    implements _$GroupHoldStateCopyWith<$Res> {
  __$GroupHoldStateCopyWithImpl(this._self, this._then);

  final _GroupHoldState _self;
  final $Res Function(_GroupHoldState) _then;

/// Create a copy of GroupHoldState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSubmitting = null,Object? seats = null,Object? reservation = freezed,Object? errorMessage = freezed,}) {
  return _then(_GroupHoldState(
isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,seats: null == seats ? _self.seats : seats // ignore: cast_nullable_to_non_nullable
as int,reservation: freezed == reservation ? _self.reservation : reservation // ignore: cast_nullable_to_non_nullable
as GroupHoldReservation?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of GroupHoldState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupHoldReservationCopyWith<$Res>? get reservation {
    if (_self.reservation == null) {
    return null;
  }

  return $GroupHoldReservationCopyWith<$Res>(_self.reservation!, (value) {
    return _then(_self.copyWith(reservation: value));
  });
}
}

// dart format on
