// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pricing_tier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PricingTier {

 String get id; PricingKind get kind; String get label; int get priceCents; String get currency; int? get remainingSeats;
/// Create a copy of PricingTier
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PricingTierCopyWith<PricingTier> get copyWith => _$PricingTierCopyWithImpl<PricingTier>(this as PricingTier, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PricingTier;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PricingTier&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.kind, _this.kind) || other.kind == _this.kind)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.priceCents, _this.priceCents) || other.priceCents == _this.priceCents)&&(identical(other.currency, _this.currency) || other.currency == _this.currency)&&(identical(other.remainingSeats, _this.remainingSeats) || other.remainingSeats == _this.remainingSeats));
}


@override
int get hashCode {
  final _this = this as PricingTier;
  return Object.hash(runtimeType,_this.id,_this.kind,_this.label,_this.priceCents,_this.currency,_this.remainingSeats);
}

@override
String toString() {
  final _this = this as PricingTier;
  return 'PricingTier(id: ${_this.id}, kind: ${_this.kind}, label: ${_this.label}, priceCents: ${_this.priceCents}, currency: ${_this.currency}, remainingSeats: ${_this.remainingSeats})';
}


}

/// @nodoc
abstract mixin class $PricingTierCopyWith<$Res>  {
  factory $PricingTierCopyWith(PricingTier value, $Res Function(PricingTier) _then) = _$PricingTierCopyWithImpl;
@useResult
$Res call({
 String id, PricingKind kind, String label, int priceCents, String currency, int? remainingSeats
});




}
/// @nodoc
class _$PricingTierCopyWithImpl<$Res>
    implements $PricingTierCopyWith<$Res> {
  _$PricingTierCopyWithImpl(this._self, this._then);

  final PricingTier _self;
  final $Res Function(PricingTier) _then;

/// Create a copy of PricingTier
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? kind = null,Object? label = null,Object? priceCents = null,Object? currency = null,Object? remainingSeats = freezed,}) {
  return _then(PricingTier(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as PricingKind,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,priceCents: null == priceCents ? _self.priceCents : priceCents // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,remainingSeats: freezed == remainingSeats ? _self.remainingSeats : remainingSeats // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PricingTier].
extension PricingTierPatterns on PricingTier {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PricingTier value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PricingTier() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PricingTier value)  $default,){
final _that = this;
switch (_that) {
case _PricingTier():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PricingTier value)?  $default,){
final _that = this;
switch (_that) {
case _PricingTier() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  PricingKind kind,  String label,  int priceCents,  String currency,  int? remainingSeats)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PricingTier() when $default != null:
return $default(_that.id,_that.kind,_that.label,_that.priceCents,_that.currency,_that.remainingSeats);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  PricingKind kind,  String label,  int priceCents,  String currency,  int? remainingSeats)  $default,) {final _that = this;
switch (_that) {
case _PricingTier():
return $default(_that.id,_that.kind,_that.label,_that.priceCents,_that.currency,_that.remainingSeats);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  PricingKind kind,  String label,  int priceCents,  String currency,  int? remainingSeats)?  $default,) {final _that = this;
switch (_that) {
case _PricingTier() when $default != null:
return $default(_that.id,_that.kind,_that.label,_that.priceCents,_that.currency,_that.remainingSeats);case _:
  return null;

}
}

}

/// @nodoc


class _PricingTier extends PricingTier {
  const _PricingTier({required this.id, required this.kind, required this.label, required this.priceCents, required this.currency, this.remainingSeats}): super._();
  

@override final  String id;
@override final  PricingKind kind;
@override final  String label;
@override final  int priceCents;
@override final  String currency;
@override final  int? remainingSeats;

/// Create a copy of PricingTier
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PricingTierCopyWith<_PricingTier> get copyWith => __$PricingTierCopyWithImpl<_PricingTier>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PricingTier&&(identical(other.id, id) || other.id == id)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.label, label) || other.label == label)&&(identical(other.priceCents, priceCents) || other.priceCents == priceCents)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.remainingSeats, remainingSeats) || other.remainingSeats == remainingSeats));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,kind,label,priceCents,currency,remainingSeats);
}

@override
String toString() {
    return 'PricingTier(id: $id, kind: $kind, label: $label, priceCents: $priceCents, currency: $currency, remainingSeats: $remainingSeats)';
}


}

/// @nodoc
abstract mixin class _$PricingTierCopyWith<$Res> implements $PricingTierCopyWith<$Res> {
  factory _$PricingTierCopyWith(_PricingTier value, $Res Function(_PricingTier) _then) = __$PricingTierCopyWithImpl;
@override @useResult
$Res call({
 String id, PricingKind kind, String label, int priceCents, String currency, int? remainingSeats
});




}
/// @nodoc
class __$PricingTierCopyWithImpl<$Res>
    implements _$PricingTierCopyWith<$Res> {
  __$PricingTierCopyWithImpl(this._self, this._then);

  final _PricingTier _self;
  final $Res Function(_PricingTier) _then;

/// Create a copy of PricingTier
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? kind = null,Object? label = null,Object? priceCents = null,Object? currency = null,Object? remainingSeats = freezed,}) {
  return _then(_PricingTier(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as PricingKind,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,priceCents: null == priceCents ? _self.priceCents : priceCents // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,remainingSeats: freezed == remainingSeats ? _self.remainingSeats : remainingSeats // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
