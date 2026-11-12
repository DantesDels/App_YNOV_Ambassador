// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_quote_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckoutQuoteDto {

 String get id; String get eventId; String get paymentIntentClientSecret; int get amountCents; String get currency; String get label; int get seats; DateTime get expiresAt;
/// Create a copy of CheckoutQuoteDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutQuoteDtoCopyWith<CheckoutQuoteDto> get copyWith => _$CheckoutQuoteDtoCopyWithImpl<CheckoutQuoteDto>(this as CheckoutQuoteDto, _$identity);

  /// Serializes this CheckoutQuoteDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CheckoutQuoteDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutQuoteDto&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.eventId, _this.eventId) || other.eventId == _this.eventId)&&(identical(other.paymentIntentClientSecret, _this.paymentIntentClientSecret) || other.paymentIntentClientSecret == _this.paymentIntentClientSecret)&&(identical(other.amountCents, _this.amountCents) || other.amountCents == _this.amountCents)&&(identical(other.currency, _this.currency) || other.currency == _this.currency)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.seats, _this.seats) || other.seats == _this.seats)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CheckoutQuoteDto;
  return Object.hash(runtimeType,_this.id,_this.eventId,_this.paymentIntentClientSecret,_this.amountCents,_this.currency,_this.label,_this.seats,_this.expiresAt);
}

@override
String toString() {
  final _this = this as CheckoutQuoteDto;
  return 'CheckoutQuoteDto(id: ${_this.id}, eventId: ${_this.eventId}, paymentIntentClientSecret: ${_this.paymentIntentClientSecret}, amountCents: ${_this.amountCents}, currency: ${_this.currency}, label: ${_this.label}, seats: ${_this.seats}, expiresAt: ${_this.expiresAt})';
}


}

/// @nodoc
abstract mixin class $CheckoutQuoteDtoCopyWith<$Res>  {
  factory $CheckoutQuoteDtoCopyWith(CheckoutQuoteDto value, $Res Function(CheckoutQuoteDto) _then) = _$CheckoutQuoteDtoCopyWithImpl;
@useResult
$Res call({
 String id, String eventId, String paymentIntentClientSecret, int amountCents, String currency, String label, int seats, DateTime expiresAt
});




}
/// @nodoc
class _$CheckoutQuoteDtoCopyWithImpl<$Res>
    implements $CheckoutQuoteDtoCopyWith<$Res> {
  _$CheckoutQuoteDtoCopyWithImpl(this._self, this._then);

  final CheckoutQuoteDto _self;
  final $Res Function(CheckoutQuoteDto) _then;

/// Create a copy of CheckoutQuoteDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? eventId = null,Object? paymentIntentClientSecret = null,Object? amountCents = null,Object? currency = null,Object? label = null,Object? seats = null,Object? expiresAt = null,}) {
  return _then(CheckoutQuoteDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,paymentIntentClientSecret: null == paymentIntentClientSecret ? _self.paymentIntentClientSecret : paymentIntentClientSecret // ignore: cast_nullable_to_non_nullable
as String,amountCents: null == amountCents ? _self.amountCents : amountCents // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,seats: null == seats ? _self.seats : seats // ignore: cast_nullable_to_non_nullable
as int,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckoutQuoteDto].
extension CheckoutQuoteDtoPatterns on CheckoutQuoteDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutQuoteDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutQuoteDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutQuoteDto value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutQuoteDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutQuoteDto value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutQuoteDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String eventId,  String paymentIntentClientSecret,  int amountCents,  String currency,  String label,  int seats,  DateTime expiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutQuoteDto() when $default != null:
return $default(_that.id,_that.eventId,_that.paymentIntentClientSecret,_that.amountCents,_that.currency,_that.label,_that.seats,_that.expiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String eventId,  String paymentIntentClientSecret,  int amountCents,  String currency,  String label,  int seats,  DateTime expiresAt)  $default,) {final _that = this;
switch (_that) {
case _CheckoutQuoteDto():
return $default(_that.id,_that.eventId,_that.paymentIntentClientSecret,_that.amountCents,_that.currency,_that.label,_that.seats,_that.expiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String eventId,  String paymentIntentClientSecret,  int amountCents,  String currency,  String label,  int seats,  DateTime expiresAt)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutQuoteDto() when $default != null:
return $default(_that.id,_that.eventId,_that.paymentIntentClientSecret,_that.amountCents,_that.currency,_that.label,_that.seats,_that.expiresAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _CheckoutQuoteDto implements CheckoutQuoteDto {
  const _CheckoutQuoteDto({required this.id, required this.eventId, required this.paymentIntentClientSecret, required this.amountCents, required this.currency, required this.label, required this.seats, required this.expiresAt});
  factory _CheckoutQuoteDto.fromJson(Map<String, dynamic> json) => _$CheckoutQuoteDtoFromJson(json);

@override final  String id;
@override final  String eventId;
@override final  String paymentIntentClientSecret;
@override final  int amountCents;
@override final  String currency;
@override final  String label;
@override final  int seats;
@override final  DateTime expiresAt;

/// Create a copy of CheckoutQuoteDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutQuoteDtoCopyWith<_CheckoutQuoteDto> get copyWith => __$CheckoutQuoteDtoCopyWithImpl<_CheckoutQuoteDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckoutQuoteDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutQuoteDto&&(identical(other.id, id) || other.id == id)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.paymentIntentClientSecret, paymentIntentClientSecret) || other.paymentIntentClientSecret == paymentIntentClientSecret)&&(identical(other.amountCents, amountCents) || other.amountCents == amountCents)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.label, label) || other.label == label)&&(identical(other.seats, seats) || other.seats == seats)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,eventId,paymentIntentClientSecret,amountCents,currency,label,seats,expiresAt);
}

@override
String toString() {
    return 'CheckoutQuoteDto(id: $id, eventId: $eventId, paymentIntentClientSecret: $paymentIntentClientSecret, amountCents: $amountCents, currency: $currency, label: $label, seats: $seats, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$CheckoutQuoteDtoCopyWith<$Res> implements $CheckoutQuoteDtoCopyWith<$Res> {
  factory _$CheckoutQuoteDtoCopyWith(_CheckoutQuoteDto value, $Res Function(_CheckoutQuoteDto) _then) = __$CheckoutQuoteDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String eventId, String paymentIntentClientSecret, int amountCents, String currency, String label, int seats, DateTime expiresAt
});




}
/// @nodoc
class __$CheckoutQuoteDtoCopyWithImpl<$Res>
    implements _$CheckoutQuoteDtoCopyWith<$Res> {
  __$CheckoutQuoteDtoCopyWithImpl(this._self, this._then);

  final _CheckoutQuoteDto _self;
  final $Res Function(_CheckoutQuoteDto) _then;

/// Create a copy of CheckoutQuoteDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? eventId = null,Object? paymentIntentClientSecret = null,Object? amountCents = null,Object? currency = null,Object? label = null,Object? seats = null,Object? expiresAt = null,}) {
  return _then(_CheckoutQuoteDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,paymentIntentClientSecret: null == paymentIntentClientSecret ? _self.paymentIntentClientSecret : paymentIntentClientSecret // ignore: cast_nullable_to_non_nullable
as String,amountCents: null == amountCents ? _self.amountCents : amountCents // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,seats: null == seats ? _self.seats : seats // ignore: cast_nullable_to_non_nullable
as int,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
