// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckoutOption {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutOption);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CheckoutOption()';
}


}

/// @nodoc
class $CheckoutOptionCopyWith<$Res>  {
$CheckoutOptionCopyWith(CheckoutOption _, $Res Function(CheckoutOption) __);
}


/// Adds pattern-matching-related methods to [CheckoutOption].
extension CheckoutOptionPatterns on CheckoutOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( IndividualCheckout value)?  individual,TResult Function( SquadCheckout value)?  squad,required TResult orElse(),}){
final _that = this;
switch (_that) {
case IndividualCheckout() when individual != null:
return individual(_that);case SquadCheckout() when squad != null:
return squad(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( IndividualCheckout value)  individual,required TResult Function( SquadCheckout value)  squad,}){
final _that = this;
switch (_that) {
case IndividualCheckout():
return individual(_that);case SquadCheckout():
return squad(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( IndividualCheckout value)?  individual,TResult? Function( SquadCheckout value)?  squad,}){
final _that = this;
switch (_that) {
case IndividualCheckout() when individual != null:
return individual(_that);case SquadCheckout() when squad != null:
return squad(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  individual,TResult Function( int seats)?  squad,required TResult orElse(),}) {final _that = this;
switch (_that) {
case IndividualCheckout() when individual != null:
return individual();case SquadCheckout() when squad != null:
return squad(_that.seats);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  individual,required TResult Function( int seats)  squad,}) {final _that = this;
switch (_that) {
case IndividualCheckout():
return individual();case SquadCheckout():
return squad(_that.seats);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  individual,TResult? Function( int seats)?  squad,}) {final _that = this;
switch (_that) {
case IndividualCheckout() when individual != null:
return individual();case SquadCheckout() when squad != null:
return squad(_that.seats);case _:
  return null;

}
}

}

/// @nodoc


class IndividualCheckout extends CheckoutOption {
  const IndividualCheckout(): super._();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is IndividualCheckout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CheckoutOption.individual()';
}


}




/// @nodoc


class SquadCheckout extends CheckoutOption {
  const SquadCheckout({required this.seats}): super._();
  

 final  int seats;

/// Create a copy of CheckoutOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SquadCheckoutCopyWith<SquadCheckout> get copyWith => _$SquadCheckoutCopyWithImpl<SquadCheckout>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SquadCheckout&&(identical(other.seats, seats) || other.seats == seats));
}


@override
int get hashCode {
    return Object.hash(runtimeType,seats);
}

@override
String toString() {
    return 'CheckoutOption.squad(seats: $seats)';
}


}

/// @nodoc
abstract mixin class $SquadCheckoutCopyWith<$Res> implements $CheckoutOptionCopyWith<$Res> {
  factory $SquadCheckoutCopyWith(SquadCheckout value, $Res Function(SquadCheckout) _then) = _$SquadCheckoutCopyWithImpl;
@useResult
$Res call({
 int seats
});




}
/// @nodoc
class _$SquadCheckoutCopyWithImpl<$Res>
    implements $SquadCheckoutCopyWith<$Res> {
  _$SquadCheckoutCopyWithImpl(this._self, this._then);

  final SquadCheckout _self;
  final $Res Function(SquadCheckout) _then;

/// Create a copy of CheckoutOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? seats = null,}) {
  return _then(SquadCheckout(
seats: null == seats ? _self.seats : seats // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
