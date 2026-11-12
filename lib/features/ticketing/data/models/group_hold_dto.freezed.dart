// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_hold_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroupHoldDto {

 String get id; String get eventId; String get eventTitle; int get seats; DateTime get expiresAt; List<HoldPaymentLinkDto> get paymentLinks; String get currency; int get unitAmountCents;
/// Create a copy of GroupHoldDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupHoldDtoCopyWith<GroupHoldDto> get copyWith => _$GroupHoldDtoCopyWithImpl<GroupHoldDto>(this as GroupHoldDto, _$identity);

  /// Serializes this GroupHoldDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as GroupHoldDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupHoldDto&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.eventId, _this.eventId) || other.eventId == _this.eventId)&&(identical(other.eventTitle, _this.eventTitle) || other.eventTitle == _this.eventTitle)&&(identical(other.seats, _this.seats) || other.seats == _this.seats)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&const DeepCollectionEquality().equals(other.paymentLinks, _this.paymentLinks)&&(identical(other.currency, _this.currency) || other.currency == _this.currency)&&(identical(other.unitAmountCents, _this.unitAmountCents) || other.unitAmountCents == _this.unitAmountCents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as GroupHoldDto;
  return Object.hash(runtimeType,_this.id,_this.eventId,_this.eventTitle,_this.seats,_this.expiresAt,const DeepCollectionEquality().hash(_this.paymentLinks),_this.currency,_this.unitAmountCents);
}

@override
String toString() {
  final _this = this as GroupHoldDto;
  return 'GroupHoldDto(id: ${_this.id}, eventId: ${_this.eventId}, eventTitle: ${_this.eventTitle}, seats: ${_this.seats}, expiresAt: ${_this.expiresAt}, paymentLinks: ${_this.paymentLinks}, currency: ${_this.currency}, unitAmountCents: ${_this.unitAmountCents})';
}


}

/// @nodoc
abstract mixin class $GroupHoldDtoCopyWith<$Res>  {
  factory $GroupHoldDtoCopyWith(GroupHoldDto value, $Res Function(GroupHoldDto) _then) = _$GroupHoldDtoCopyWithImpl;
@useResult
$Res call({
 String id, String eventId, String eventTitle, int seats, DateTime expiresAt, List<HoldPaymentLinkDto> paymentLinks, String currency, int unitAmountCents
});




}
/// @nodoc
class _$GroupHoldDtoCopyWithImpl<$Res>
    implements $GroupHoldDtoCopyWith<$Res> {
  _$GroupHoldDtoCopyWithImpl(this._self, this._then);

  final GroupHoldDto _self;
  final $Res Function(GroupHoldDto) _then;

/// Create a copy of GroupHoldDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? eventId = null,Object? eventTitle = null,Object? seats = null,Object? expiresAt = null,Object? paymentLinks = null,Object? currency = null,Object? unitAmountCents = null,}) {
  return _then(GroupHoldDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,seats: null == seats ? _self.seats : seats // ignore: cast_nullable_to_non_nullable
as int,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,paymentLinks: null == paymentLinks ? _self.paymentLinks : paymentLinks // ignore: cast_nullable_to_non_nullable
as List<HoldPaymentLinkDto>,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,unitAmountCents: null == unitAmountCents ? _self.unitAmountCents : unitAmountCents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupHoldDto].
extension GroupHoldDtoPatterns on GroupHoldDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupHoldDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupHoldDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupHoldDto value)  $default,){
final _that = this;
switch (_that) {
case _GroupHoldDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupHoldDto value)?  $default,){
final _that = this;
switch (_that) {
case _GroupHoldDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String eventId,  String eventTitle,  int seats,  DateTime expiresAt,  List<HoldPaymentLinkDto> paymentLinks,  String currency,  int unitAmountCents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupHoldDto() when $default != null:
return $default(_that.id,_that.eventId,_that.eventTitle,_that.seats,_that.expiresAt,_that.paymentLinks,_that.currency,_that.unitAmountCents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String eventId,  String eventTitle,  int seats,  DateTime expiresAt,  List<HoldPaymentLinkDto> paymentLinks,  String currency,  int unitAmountCents)  $default,) {final _that = this;
switch (_that) {
case _GroupHoldDto():
return $default(_that.id,_that.eventId,_that.eventTitle,_that.seats,_that.expiresAt,_that.paymentLinks,_that.currency,_that.unitAmountCents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String eventId,  String eventTitle,  int seats,  DateTime expiresAt,  List<HoldPaymentLinkDto> paymentLinks,  String currency,  int unitAmountCents)?  $default,) {final _that = this;
switch (_that) {
case _GroupHoldDto() when $default != null:
return $default(_that.id,_that.eventId,_that.eventTitle,_that.seats,_that.expiresAt,_that.paymentLinks,_that.currency,_that.unitAmountCents);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _GroupHoldDto implements GroupHoldDto {
  const _GroupHoldDto({required this.id, required this.eventId, required this.eventTitle, required this.seats, required this.expiresAt, required  List<HoldPaymentLinkDto> paymentLinks, required this.currency, required this.unitAmountCents}): _paymentLinks = paymentLinks;
  factory _GroupHoldDto.fromJson(Map<String, dynamic> json) => _$GroupHoldDtoFromJson(json);

@override final  String id;
@override final  String eventId;
@override final  String eventTitle;
@override final  int seats;
@override final  DateTime expiresAt;
 final  List<HoldPaymentLinkDto> _paymentLinks;
@override List<HoldPaymentLinkDto> get paymentLinks {
  if (_paymentLinks is EqualUnmodifiableListView) return _paymentLinks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paymentLinks);
}

@override final  String currency;
@override final  int unitAmountCents;

/// Create a copy of GroupHoldDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupHoldDtoCopyWith<_GroupHoldDto> get copyWith => __$GroupHoldDtoCopyWithImpl<_GroupHoldDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupHoldDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupHoldDto&&(identical(other.id, id) || other.id == id)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.seats, seats) || other.seats == seats)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&const DeepCollectionEquality().equals(other.paymentLinks, _paymentLinks)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.unitAmountCents, unitAmountCents) || other.unitAmountCents == unitAmountCents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,eventId,eventTitle,seats,expiresAt,const DeepCollectionEquality().hash(_paymentLinks),currency,unitAmountCents);
}

@override
String toString() {
    return 'GroupHoldDto(id: $id, eventId: $eventId, eventTitle: $eventTitle, seats: $seats, expiresAt: $expiresAt, paymentLinks: $paymentLinks, currency: $currency, unitAmountCents: $unitAmountCents)';
}


}

/// @nodoc
abstract mixin class _$GroupHoldDtoCopyWith<$Res> implements $GroupHoldDtoCopyWith<$Res> {
  factory _$GroupHoldDtoCopyWith(_GroupHoldDto value, $Res Function(_GroupHoldDto) _then) = __$GroupHoldDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String eventId, String eventTitle, int seats, DateTime expiresAt, List<HoldPaymentLinkDto> paymentLinks, String currency, int unitAmountCents
});




}
/// @nodoc
class __$GroupHoldDtoCopyWithImpl<$Res>
    implements _$GroupHoldDtoCopyWith<$Res> {
  __$GroupHoldDtoCopyWithImpl(this._self, this._then);

  final _GroupHoldDto _self;
  final $Res Function(_GroupHoldDto) _then;

/// Create a copy of GroupHoldDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? eventId = null,Object? eventTitle = null,Object? seats = null,Object? expiresAt = null,Object? paymentLinks = null,Object? currency = null,Object? unitAmountCents = null,}) {
  return _then(_GroupHoldDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,seats: null == seats ? _self.seats : seats // ignore: cast_nullable_to_non_nullable
as int,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,paymentLinks: null == paymentLinks ? _self._paymentLinks : paymentLinks // ignore: cast_nullable_to_non_nullable
as List<HoldPaymentLinkDto>,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,unitAmountCents: null == unitAmountCents ? _self.unitAmountCents : unitAmountCents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
