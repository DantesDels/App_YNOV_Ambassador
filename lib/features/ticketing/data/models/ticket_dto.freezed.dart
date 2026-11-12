// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketDto {

 String get id; String get eventId; String get eventTitle; DateTime get eventStartsAt; String get venueName; String get organizerName; String get organizer; String get holderName; String get qrPayload; String get shortCode; String get status; DateTime get purchasedAt; int get amountPaidCents; String get currency; String? get seatLabel; String? get squadId;
/// Create a copy of TicketDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketDtoCopyWith<TicketDto> get copyWith => _$TicketDtoCopyWithImpl<TicketDto>(this as TicketDto, _$identity);

  /// Serializes this TicketDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TicketDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketDto&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.eventId, _this.eventId) || other.eventId == _this.eventId)&&(identical(other.eventTitle, _this.eventTitle) || other.eventTitle == _this.eventTitle)&&(identical(other.eventStartsAt, _this.eventStartsAt) || other.eventStartsAt == _this.eventStartsAt)&&(identical(other.venueName, _this.venueName) || other.venueName == _this.venueName)&&(identical(other.organizerName, _this.organizerName) || other.organizerName == _this.organizerName)&&(identical(other.organizer, _this.organizer) || other.organizer == _this.organizer)&&(identical(other.holderName, _this.holderName) || other.holderName == _this.holderName)&&(identical(other.qrPayload, _this.qrPayload) || other.qrPayload == _this.qrPayload)&&(identical(other.shortCode, _this.shortCode) || other.shortCode == _this.shortCode)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.purchasedAt, _this.purchasedAt) || other.purchasedAt == _this.purchasedAt)&&(identical(other.amountPaidCents, _this.amountPaidCents) || other.amountPaidCents == _this.amountPaidCents)&&(identical(other.currency, _this.currency) || other.currency == _this.currency)&&(identical(other.seatLabel, _this.seatLabel) || other.seatLabel == _this.seatLabel)&&(identical(other.squadId, _this.squadId) || other.squadId == _this.squadId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TicketDto;
  return Object.hash(runtimeType,_this.id,_this.eventId,_this.eventTitle,_this.eventStartsAt,_this.venueName,_this.organizerName,_this.organizer,_this.holderName,_this.qrPayload,_this.shortCode,_this.status,_this.purchasedAt,_this.amountPaidCents,_this.currency,_this.seatLabel,_this.squadId);
}

@override
String toString() {
  final _this = this as TicketDto;
  return 'TicketDto(id: ${_this.id}, eventId: ${_this.eventId}, eventTitle: ${_this.eventTitle}, eventStartsAt: ${_this.eventStartsAt}, venueName: ${_this.venueName}, organizerName: ${_this.organizerName}, organizer: ${_this.organizer}, holderName: ${_this.holderName}, qrPayload: ${_this.qrPayload}, shortCode: ${_this.shortCode}, status: ${_this.status}, purchasedAt: ${_this.purchasedAt}, amountPaidCents: ${_this.amountPaidCents}, currency: ${_this.currency}, seatLabel: ${_this.seatLabel}, squadId: ${_this.squadId})';
}


}

/// @nodoc
abstract mixin class $TicketDtoCopyWith<$Res>  {
  factory $TicketDtoCopyWith(TicketDto value, $Res Function(TicketDto) _then) = _$TicketDtoCopyWithImpl;
@useResult
$Res call({
 String id, String eventId, String eventTitle, DateTime eventStartsAt, String venueName, String organizerName, String organizer, String holderName, String qrPayload, String shortCode, String status, DateTime purchasedAt, int amountPaidCents, String currency, String? seatLabel, String? squadId
});




}
/// @nodoc
class _$TicketDtoCopyWithImpl<$Res>
    implements $TicketDtoCopyWith<$Res> {
  _$TicketDtoCopyWithImpl(this._self, this._then);

  final TicketDto _self;
  final $Res Function(TicketDto) _then;

/// Create a copy of TicketDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? eventId = null,Object? eventTitle = null,Object? eventStartsAt = null,Object? venueName = null,Object? organizerName = null,Object? organizer = null,Object? holderName = null,Object? qrPayload = null,Object? shortCode = null,Object? status = null,Object? purchasedAt = null,Object? amountPaidCents = null,Object? currency = null,Object? seatLabel = freezed,Object? squadId = freezed,}) {
  return _then(TicketDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventStartsAt: null == eventStartsAt ? _self.eventStartsAt : eventStartsAt // ignore: cast_nullable_to_non_nullable
as DateTime,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,organizerName: null == organizerName ? _self.organizerName : organizerName // ignore: cast_nullable_to_non_nullable
as String,organizer: null == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as String,holderName: null == holderName ? _self.holderName : holderName // ignore: cast_nullable_to_non_nullable
as String,qrPayload: null == qrPayload ? _self.qrPayload : qrPayload // ignore: cast_nullable_to_non_nullable
as String,shortCode: null == shortCode ? _self.shortCode : shortCode // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,purchasedAt: null == purchasedAt ? _self.purchasedAt : purchasedAt // ignore: cast_nullable_to_non_nullable
as DateTime,amountPaidCents: null == amountPaidCents ? _self.amountPaidCents : amountPaidCents // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,seatLabel: freezed == seatLabel ? _self.seatLabel : seatLabel // ignore: cast_nullable_to_non_nullable
as String?,squadId: freezed == squadId ? _self.squadId : squadId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketDto].
extension TicketDtoPatterns on TicketDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketDto value)  $default,){
final _that = this;
switch (_that) {
case _TicketDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketDto value)?  $default,){
final _that = this;
switch (_that) {
case _TicketDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String eventId,  String eventTitle,  DateTime eventStartsAt,  String venueName,  String organizerName,  String organizer,  String holderName,  String qrPayload,  String shortCode,  String status,  DateTime purchasedAt,  int amountPaidCents,  String currency,  String? seatLabel,  String? squadId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketDto() when $default != null:
return $default(_that.id,_that.eventId,_that.eventTitle,_that.eventStartsAt,_that.venueName,_that.organizerName,_that.organizer,_that.holderName,_that.qrPayload,_that.shortCode,_that.status,_that.purchasedAt,_that.amountPaidCents,_that.currency,_that.seatLabel,_that.squadId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String eventId,  String eventTitle,  DateTime eventStartsAt,  String venueName,  String organizerName,  String organizer,  String holderName,  String qrPayload,  String shortCode,  String status,  DateTime purchasedAt,  int amountPaidCents,  String currency,  String? seatLabel,  String? squadId)  $default,) {final _that = this;
switch (_that) {
case _TicketDto():
return $default(_that.id,_that.eventId,_that.eventTitle,_that.eventStartsAt,_that.venueName,_that.organizerName,_that.organizer,_that.holderName,_that.qrPayload,_that.shortCode,_that.status,_that.purchasedAt,_that.amountPaidCents,_that.currency,_that.seatLabel,_that.squadId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String eventId,  String eventTitle,  DateTime eventStartsAt,  String venueName,  String organizerName,  String organizer,  String holderName,  String qrPayload,  String shortCode,  String status,  DateTime purchasedAt,  int amountPaidCents,  String currency,  String? seatLabel,  String? squadId)?  $default,) {final _that = this;
switch (_that) {
case _TicketDto() when $default != null:
return $default(_that.id,_that.eventId,_that.eventTitle,_that.eventStartsAt,_that.venueName,_that.organizerName,_that.organizer,_that.holderName,_that.qrPayload,_that.shortCode,_that.status,_that.purchasedAt,_that.amountPaidCents,_that.currency,_that.seatLabel,_that.squadId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _TicketDto implements TicketDto {
  const _TicketDto({required this.id, required this.eventId, required this.eventTitle, required this.eventStartsAt, required this.venueName, required this.organizerName, required this.organizer, required this.holderName, required this.qrPayload, required this.shortCode, required this.status, required this.purchasedAt, required this.amountPaidCents, required this.currency, this.seatLabel, this.squadId});
  factory _TicketDto.fromJson(Map<String, dynamic> json) => _$TicketDtoFromJson(json);

@override final  String id;
@override final  String eventId;
@override final  String eventTitle;
@override final  DateTime eventStartsAt;
@override final  String venueName;
@override final  String organizerName;
@override final  String organizer;
@override final  String holderName;
@override final  String qrPayload;
@override final  String shortCode;
@override final  String status;
@override final  DateTime purchasedAt;
@override final  int amountPaidCents;
@override final  String currency;
@override final  String? seatLabel;
@override final  String? squadId;

/// Create a copy of TicketDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketDtoCopyWith<_TicketDto> get copyWith => __$TicketDtoCopyWithImpl<_TicketDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketDto&&(identical(other.id, id) || other.id == id)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventStartsAt, eventStartsAt) || other.eventStartsAt == eventStartsAt)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.organizerName, organizerName) || other.organizerName == organizerName)&&(identical(other.organizer, organizer) || other.organizer == organizer)&&(identical(other.holderName, holderName) || other.holderName == holderName)&&(identical(other.qrPayload, qrPayload) || other.qrPayload == qrPayload)&&(identical(other.shortCode, shortCode) || other.shortCode == shortCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.purchasedAt, purchasedAt) || other.purchasedAt == purchasedAt)&&(identical(other.amountPaidCents, amountPaidCents) || other.amountPaidCents == amountPaidCents)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.seatLabel, seatLabel) || other.seatLabel == seatLabel)&&(identical(other.squadId, squadId) || other.squadId == squadId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,eventId,eventTitle,eventStartsAt,venueName,organizerName,organizer,holderName,qrPayload,shortCode,status,purchasedAt,amountPaidCents,currency,seatLabel,squadId);
}

@override
String toString() {
    return 'TicketDto(id: $id, eventId: $eventId, eventTitle: $eventTitle, eventStartsAt: $eventStartsAt, venueName: $venueName, organizerName: $organizerName, organizer: $organizer, holderName: $holderName, qrPayload: $qrPayload, shortCode: $shortCode, status: $status, purchasedAt: $purchasedAt, amountPaidCents: $amountPaidCents, currency: $currency, seatLabel: $seatLabel, squadId: $squadId)';
}


}

/// @nodoc
abstract mixin class _$TicketDtoCopyWith<$Res> implements $TicketDtoCopyWith<$Res> {
  factory _$TicketDtoCopyWith(_TicketDto value, $Res Function(_TicketDto) _then) = __$TicketDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String eventId, String eventTitle, DateTime eventStartsAt, String venueName, String organizerName, String organizer, String holderName, String qrPayload, String shortCode, String status, DateTime purchasedAt, int amountPaidCents, String currency, String? seatLabel, String? squadId
});




}
/// @nodoc
class __$TicketDtoCopyWithImpl<$Res>
    implements _$TicketDtoCopyWith<$Res> {
  __$TicketDtoCopyWithImpl(this._self, this._then);

  final _TicketDto _self;
  final $Res Function(_TicketDto) _then;

/// Create a copy of TicketDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? eventId = null,Object? eventTitle = null,Object? eventStartsAt = null,Object? venueName = null,Object? organizerName = null,Object? organizer = null,Object? holderName = null,Object? qrPayload = null,Object? shortCode = null,Object? status = null,Object? purchasedAt = null,Object? amountPaidCents = null,Object? currency = null,Object? seatLabel = freezed,Object? squadId = freezed,}) {
  return _then(_TicketDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventStartsAt: null == eventStartsAt ? _self.eventStartsAt : eventStartsAt // ignore: cast_nullable_to_non_nullable
as DateTime,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,organizerName: null == organizerName ? _self.organizerName : organizerName // ignore: cast_nullable_to_non_nullable
as String,organizer: null == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as String,holderName: null == holderName ? _self.holderName : holderName // ignore: cast_nullable_to_non_nullable
as String,qrPayload: null == qrPayload ? _self.qrPayload : qrPayload // ignore: cast_nullable_to_non_nullable
as String,shortCode: null == shortCode ? _self.shortCode : shortCode // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,purchasedAt: null == purchasedAt ? _self.purchasedAt : purchasedAt // ignore: cast_nullable_to_non_nullable
as DateTime,amountPaidCents: null == amountPaidCents ? _self.amountPaidCents : amountPaidCents // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,seatLabel: freezed == seatLabel ? _self.seatLabel : seatLabel // ignore: cast_nullable_to_non_nullable
as String?,squadId: freezed == squadId ? _self.squadId : squadId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
