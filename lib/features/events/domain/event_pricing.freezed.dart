// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_pricing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventPricing {

 List<PricingTier> get tiers; String get currency;
/// Create a copy of EventPricing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventPricingCopyWith<EventPricing> get copyWith => _$EventPricingCopyWithImpl<EventPricing>(this as EventPricing, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as EventPricing;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventPricing&&const DeepCollectionEquality().equals(other.tiers, _this.tiers)&&(identical(other.currency, _this.currency) || other.currency == _this.currency));
}


@override
int get hashCode {
  final _this = this as EventPricing;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.tiers),_this.currency);
}

@override
String toString() {
  final _this = this as EventPricing;
  return 'EventPricing(tiers: ${_this.tiers}, currency: ${_this.currency})';
}


}

/// @nodoc
abstract mixin class $EventPricingCopyWith<$Res>  {
  factory $EventPricingCopyWith(EventPricing value, $Res Function(EventPricing) _then) = _$EventPricingCopyWithImpl;
@useResult
$Res call({
 List<PricingTier> tiers, String currency
});




}
/// @nodoc
class _$EventPricingCopyWithImpl<$Res>
    implements $EventPricingCopyWith<$Res> {
  _$EventPricingCopyWithImpl(this._self, this._then);

  final EventPricing _self;
  final $Res Function(EventPricing) _then;

/// Create a copy of EventPricing
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tiers = null,Object? currency = null,}) {
  return _then(EventPricing(
tiers: null == tiers ? _self.tiers : tiers // ignore: cast_nullable_to_non_nullable
as List<PricingTier>,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EventPricing].
extension EventPricingPatterns on EventPricing {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventPricing value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventPricing() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventPricing value)  $default,){
final _that = this;
switch (_that) {
case _EventPricing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventPricing value)?  $default,){
final _that = this;
switch (_that) {
case _EventPricing() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PricingTier> tiers,  String currency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventPricing() when $default != null:
return $default(_that.tiers,_that.currency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PricingTier> tiers,  String currency)  $default,) {final _that = this;
switch (_that) {
case _EventPricing():
return $default(_that.tiers,_that.currency);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PricingTier> tiers,  String currency)?  $default,) {final _that = this;
switch (_that) {
case _EventPricing() when $default != null:
return $default(_that.tiers,_that.currency);case _:
  return null;

}
}

}

/// @nodoc


class _EventPricing extends EventPricing {
  const _EventPricing({required  List<PricingTier> tiers, this.currency = 'EUR'}): _tiers = tiers,super._();
  

 final  List<PricingTier> _tiers;
@override List<PricingTier> get tiers {
  if (_tiers is EqualUnmodifiableListView) return _tiers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tiers);
}

@override@JsonKey() final  String currency;

/// Create a copy of EventPricing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventPricingCopyWith<_EventPricing> get copyWith => __$EventPricingCopyWithImpl<_EventPricing>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventPricing&&const DeepCollectionEquality().equals(other.tiers, _tiers)&&(identical(other.currency, currency) || other.currency == currency));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_tiers),currency);
}

@override
String toString() {
    return 'EventPricing(tiers: $tiers, currency: $currency)';
}


}

/// @nodoc
abstract mixin class _$EventPricingCopyWith<$Res> implements $EventPricingCopyWith<$Res> {
  factory _$EventPricingCopyWith(_EventPricing value, $Res Function(_EventPricing) _then) = __$EventPricingCopyWithImpl;
@override @useResult
$Res call({
 List<PricingTier> tiers, String currency
});




}
/// @nodoc
class __$EventPricingCopyWithImpl<$Res>
    implements _$EventPricingCopyWith<$Res> {
  __$EventPricingCopyWithImpl(this._self, this._then);

  final _EventPricing _self;
  final $Res Function(_EventPricing) _then;

/// Create a copy of EventPricing
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tiers = null,Object? currency = null,}) {
  return _then(_EventPricing(
tiers: null == tiers ? _self._tiers : tiers // ignore: cast_nullable_to_non_nullable
as List<PricingTier>,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
