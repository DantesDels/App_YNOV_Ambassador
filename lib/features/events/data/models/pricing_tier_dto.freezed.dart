// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pricing_tier_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PricingTierDto {

 String get id; String get kind; String get label; int get priceCents; String get currency; int? get remainingSeats;
/// Create a copy of PricingTierDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PricingTierDtoCopyWith<PricingTierDto> get copyWith => _$PricingTierDtoCopyWithImpl<PricingTierDto>(this as PricingTierDto, _$identity);

  /// Serializes this PricingTierDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PricingTierDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PricingTierDto&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.kind, _this.kind) || other.kind == _this.kind)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.priceCents, _this.priceCents) || other.priceCents == _this.priceCents)&&(identical(other.currency, _this.currency) || other.currency == _this.currency)&&(identical(other.remainingSeats, _this.remainingSeats) || other.remainingSeats == _this.remainingSeats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PricingTierDto;
  return Object.hash(runtimeType,_this.id,_this.kind,_this.label,_this.priceCents,_this.currency,_this.remainingSeats);
}

@override
String toString() {
  final _this = this as PricingTierDto;
  return 'PricingTierDto(id: ${_this.id}, kind: ${_this.kind}, label: ${_this.label}, priceCents: ${_this.priceCents}, currency: ${_this.currency}, remainingSeats: ${_this.remainingSeats})';
}


}

/// @nodoc
abstract mixin class $PricingTierDtoCopyWith<$Res>  {
  factory $PricingTierDtoCopyWith(PricingTierDto value, $Res Function(PricingTierDto) _then) = _$PricingTierDtoCopyWithImpl;
@useResult
$Res call({
 String id, String kind, String label, int priceCents, String currency, int? remainingSeats
});




}
/// @nodoc
class _$PricingTierDtoCopyWithImpl<$Res>
    implements $PricingTierDtoCopyWith<$Res> {
  _$PricingTierDtoCopyWithImpl(this._self, this._then);

  final PricingTierDto _self;
  final $Res Function(PricingTierDto) _then;

/// Create a copy of PricingTierDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? kind = null,Object? label = null,Object? priceCents = null,Object? currency = null,Object? remainingSeats = freezed,}) {
  return _then(PricingTierDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,priceCents: null == priceCents ? _self.priceCents : priceCents // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,remainingSeats: freezed == remainingSeats ? _self.remainingSeats : remainingSeats // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PricingTierDto].
extension PricingTierDtoPatterns on PricingTierDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PricingTierDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PricingTierDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PricingTierDto value)  $default,){
final _that = this;
switch (_that) {
case _PricingTierDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PricingTierDto value)?  $default,){
final _that = this;
switch (_that) {
case _PricingTierDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String kind,  String label,  int priceCents,  String currency,  int? remainingSeats)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PricingTierDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String kind,  String label,  int priceCents,  String currency,  int? remainingSeats)  $default,) {final _that = this;
switch (_that) {
case _PricingTierDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String kind,  String label,  int priceCents,  String currency,  int? remainingSeats)?  $default,) {final _that = this;
switch (_that) {
case _PricingTierDto() when $default != null:
return $default(_that.id,_that.kind,_that.label,_that.priceCents,_that.currency,_that.remainingSeats);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _PricingTierDto implements PricingTierDto {
  const _PricingTierDto({required this.id, required this.kind, required this.label, required this.priceCents, required this.currency, this.remainingSeats});
  factory _PricingTierDto.fromJson(Map<String, dynamic> json) => _$PricingTierDtoFromJson(json);

@override final  String id;
@override final  String kind;
@override final  String label;
@override final  int priceCents;
@override final  String currency;
@override final  int? remainingSeats;

/// Create a copy of PricingTierDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PricingTierDtoCopyWith<_PricingTierDto> get copyWith => __$PricingTierDtoCopyWithImpl<_PricingTierDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PricingTierDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PricingTierDto&&(identical(other.id, id) || other.id == id)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.label, label) || other.label == label)&&(identical(other.priceCents, priceCents) || other.priceCents == priceCents)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.remainingSeats, remainingSeats) || other.remainingSeats == remainingSeats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,kind,label,priceCents,currency,remainingSeats);
}

@override
String toString() {
    return 'PricingTierDto(id: $id, kind: $kind, label: $label, priceCents: $priceCents, currency: $currency, remainingSeats: $remainingSeats)';
}


}

/// @nodoc
abstract mixin class _$PricingTierDtoCopyWith<$Res> implements $PricingTierDtoCopyWith<$Res> {
  factory _$PricingTierDtoCopyWith(_PricingTierDto value, $Res Function(_PricingTierDto) _then) = __$PricingTierDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String kind, String label, int priceCents, String currency, int? remainingSeats
});




}
/// @nodoc
class __$PricingTierDtoCopyWithImpl<$Res>
    implements _$PricingTierDtoCopyWith<$Res> {
  __$PricingTierDtoCopyWithImpl(this._self, this._then);

  final _PricingTierDto _self;
  final $Res Function(_PricingTierDto) _then;

/// Create a copy of PricingTierDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? kind = null,Object? label = null,Object? priceCents = null,Object? currency = null,Object? remainingSeats = freezed,}) {
  return _then(_PricingTierDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,priceCents: null == priceCents ? _self.priceCents : priceCents // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,remainingSeats: freezed == remainingSeats ? _self.remainingSeats : remainingSeats // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
