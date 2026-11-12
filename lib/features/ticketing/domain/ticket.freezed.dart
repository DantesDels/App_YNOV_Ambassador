// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Ticket {

 String get id; String get eventId; String get eventTitle; DateTime get eventStartsAt; String get venueName; String get organizerName; OrganizerType get organizer; String get holderName; String get qrPayload; String get shortCode; TicketStatus get status; DateTime get purchasedAt; int get amountPaidCents; String get currency; String? get seatLabel; String? get squadId;
/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketCopyWith<Ticket> get copyWith => _$TicketCopyWithImpl<Ticket>(this as Ticket, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Ticket;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ticket&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.eventId, _this.eventId) || other.eventId == _this.eventId)&&(identical(other.eventTitle, _this.eventTitle) || other.eventTitle == _this.eventTitle)&&(identical(other.eventStartsAt, _this.eventStartsAt) || other.eventStartsAt == _this.eventStartsAt)&&(identical(other.venueName, _this.venueName) || other.venueName == _this.venueName)&&(identical(other.organizerName, _this.organizerName) || other.organizerName == _this.organizerName)&&(identical(other.organizer, _this.organizer) || other.organizer == _this.organizer)&&(identical(other.holderName, _this.holderName) || other.holderName == _this.holderName)&&(identical(other.qrPayload, _this.qrPayload) || other.qrPayload == _this.qrPayload)&&(identical(other.shortCode, _this.shortCode) || other.shortCode == _this.shortCode)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.purchasedAt, _this.purchasedAt) || other.purchasedAt == _this.purchasedAt)&&(identical(other.amountPaidCents, _this.amountPaidCents) || other.amountPaidCents == _this.amountPaidCents)&&(identical(other.currency, _this.currency) || other.currency == _this.currency)&&(identical(other.seatLabel, _this.seatLabel) || other.seatLabel == _this.seatLabel)&&(identical(other.squadId, _this.squadId) || other.squadId == _this.squadId));
}


@override
int get hashCode {
  final _this = this as Ticket;
  return Object.hash(runtimeType,_this.id,_this.eventId,_this.eventTitle,_this.eventStartsAt,_this.venueName,_this.organizerName,_this.organizer,_this.holderName,_this.qrPayload,_this.shortCode,_this.status,_this.purchasedAt,_this.amountPaidCents,_this.currency,_this.seatLabel,_this.squadId);
}

@override
String toString() {
  final _this = this as Ticket;
  return 'Ticket(id: ${_this.id}, eventId: ${_this.eventId}, eventTitle: ${_this.eventTitle}, eventStartsAt: ${_this.eventStartsAt}, venueName: ${_this.venueName}, organizerName: ${_this.organizerName}, organizer: ${_this.organizer}, holderName: ${_this.holderName}, qrPayload: ${_this.qrPayload}, shortCode: ${_this.shortCode}, status: ${_this.status}, purchasedAt: ${_this.purchasedAt}, amountPaidCents: ${_this.amountPaidCents}, currency: ${_this.currency}, seatLabel: ${_this.seatLabel}, squadId: ${_this.squadId})';
}


}

/// @nodoc
abstract mixin class $TicketCopyWith<$Res>  {
  factory $TicketCopyWith(Ticket value, $Res Function(Ticket) _then) = _$TicketCopyWithImpl;
@useResult
$Res call({
 String id, String eventId, String eventTitle, DateTime eventStartsAt, String venueName, String organizerName, OrganizerType organizer, String holderName, String qrPayload, String shortCode, TicketStatus status, DateTime purchasedAt, int amountPaidCents, String currency, String? seatLabel, String? squadId
});




}
/// @nodoc
class _$TicketCopyWithImpl<$Res>
    implements $TicketCopyWith<$Res> {
  _$TicketCopyWithImpl(this._self, this._then);

  final Ticket _self;
  final $Res Function(Ticket) _then;

/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? eventId = null,Object? eventTitle = null,Object? eventStartsAt = null,Object? venueName = null,Object? organizerName = null,Object? organizer = null,Object? holderName = null,Object? qrPayload = null,Object? shortCode = null,Object? status = null,Object? purchasedAt = null,Object? amountPaidCents = null,Object? currency = null,Object? seatLabel = freezed,Object? squadId = freezed,}) {
  return _then(Ticket(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventStartsAt: null == eventStartsAt ? _self.eventStartsAt : eventStartsAt // ignore: cast_nullable_to_non_nullable
as DateTime,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,organizerName: null == organizerName ? _self.organizerName : organizerName // ignore: cast_nullable_to_non_nullable
as String,organizer: null == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as OrganizerType,holderName: null == holderName ? _self.holderName : holderName // ignore: cast_nullable_to_non_nullable
as String,qrPayload: null == qrPayload ? _self.qrPayload : qrPayload // ignore: cast_nullable_to_non_nullable
as String,shortCode: null == shortCode ? _self.shortCode : shortCode // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TicketStatus,purchasedAt: null == purchasedAt ? _self.purchasedAt : purchasedAt // ignore: cast_nullable_to_non_nullable
as DateTime,amountPaidCents: null == amountPaidCents ? _self.amountPaidCents : amountPaidCents // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,seatLabel: freezed == seatLabel ? _self.seatLabel : seatLabel // ignore: cast_nullable_to_non_nullable
as String?,squadId: freezed == squadId ? _self.squadId : squadId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Ticket].
extension TicketPatterns on Ticket {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Ticket value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ticket() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Ticket value)  $default,){
final _that = this;
switch (_that) {
case _Ticket():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Ticket value)?  $default,){
final _that = this;
switch (_that) {
case _Ticket() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String eventId,  String eventTitle,  DateTime eventStartsAt,  String venueName,  String organizerName,  OrganizerType organizer,  String holderName,  String qrPayload,  String shortCode,  TicketStatus status,  DateTime purchasedAt,  int amountPaidCents,  String currency,  String? seatLabel,  String? squadId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ticket() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String eventId,  String eventTitle,  DateTime eventStartsAt,  String venueName,  String organizerName,  OrganizerType organizer,  String holderName,  String qrPayload,  String shortCode,  TicketStatus status,  DateTime purchasedAt,  int amountPaidCents,  String currency,  String? seatLabel,  String? squadId)  $default,) {final _that = this;
switch (_that) {
case _Ticket():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String eventId,  String eventTitle,  DateTime eventStartsAt,  String venueName,  String organizerName,  OrganizerType organizer,  String holderName,  String qrPayload,  String shortCode,  TicketStatus status,  DateTime purchasedAt,  int amountPaidCents,  String currency,  String? seatLabel,  String? squadId)?  $default,) {final _that = this;
switch (_that) {
case _Ticket() when $default != null:
return $default(_that.id,_that.eventId,_that.eventTitle,_that.eventStartsAt,_that.venueName,_that.organizerName,_that.organizer,_that.holderName,_that.qrPayload,_that.shortCode,_that.status,_that.purchasedAt,_that.amountPaidCents,_that.currency,_that.seatLabel,_that.squadId);case _:
  return null;

}
}

}

/// @nodoc


class _Ticket extends Ticket {
  const _Ticket({required this.id, required this.eventId, required this.eventTitle, required this.eventStartsAt, required this.venueName, required this.organizerName, required this.organizer, required this.holderName, required this.qrPayload, required this.shortCode, required this.status, required this.purchasedAt, required this.amountPaidCents, required this.currency, this.seatLabel, this.squadId}): super._();
  

@override final  String id;
@override final  String eventId;
@override final  String eventTitle;
@override final  DateTime eventStartsAt;
@override final  String venueName;
@override final  String organizerName;
@override final  OrganizerType organizer;
@override final  String holderName;
@override final  String qrPayload;
@override final  String shortCode;
@override final  TicketStatus status;
@override final  DateTime purchasedAt;
@override final  int amountPaidCents;
@override final  String currency;
@override final  String? seatLabel;
@override final  String? squadId;

/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketCopyWith<_Ticket> get copyWith => __$TicketCopyWithImpl<_Ticket>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ticket&&(identical(other.id, id) || other.id == id)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.eventStartsAt, eventStartsAt) || other.eventStartsAt == eventStartsAt)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.organizerName, organizerName) || other.organizerName == organizerName)&&(identical(other.organizer, organizer) || other.organizer == organizer)&&(identical(other.holderName, holderName) || other.holderName == holderName)&&(identical(other.qrPayload, qrPayload) || other.qrPayload == qrPayload)&&(identical(other.shortCode, shortCode) || other.shortCode == shortCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.purchasedAt, purchasedAt) || other.purchasedAt == purchasedAt)&&(identical(other.amountPaidCents, amountPaidCents) || other.amountPaidCents == amountPaidCents)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.seatLabel, seatLabel) || other.seatLabel == seatLabel)&&(identical(other.squadId, squadId) || other.squadId == squadId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,eventId,eventTitle,eventStartsAt,venueName,organizerName,organizer,holderName,qrPayload,shortCode,status,purchasedAt,amountPaidCents,currency,seatLabel,squadId);
}

@override
String toString() {
    return 'Ticket(id: $id, eventId: $eventId, eventTitle: $eventTitle, eventStartsAt: $eventStartsAt, venueName: $venueName, organizerName: $organizerName, organizer: $organizer, holderName: $holderName, qrPayload: $qrPayload, shortCode: $shortCode, status: $status, purchasedAt: $purchasedAt, amountPaidCents: $amountPaidCents, currency: $currency, seatLabel: $seatLabel, squadId: $squadId)';
}


}

/// @nodoc
abstract mixin class _$TicketCopyWith<$Res> implements $TicketCopyWith<$Res> {
  factory _$TicketCopyWith(_Ticket value, $Res Function(_Ticket) _then) = __$TicketCopyWithImpl;
@override @useResult
$Res call({
 String id, String eventId, String eventTitle, DateTime eventStartsAt, String venueName, String organizerName, OrganizerType organizer, String holderName, String qrPayload, String shortCode, TicketStatus status, DateTime purchasedAt, int amountPaidCents, String currency, String? seatLabel, String? squadId
});




}
/// @nodoc
class __$TicketCopyWithImpl<$Res>
    implements _$TicketCopyWith<$Res> {
  __$TicketCopyWithImpl(this._self, this._then);

  final _Ticket _self;
  final $Res Function(_Ticket) _then;

/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? eventId = null,Object? eventTitle = null,Object? eventStartsAt = null,Object? venueName = null,Object? organizerName = null,Object? organizer = null,Object? holderName = null,Object? qrPayload = null,Object? shortCode = null,Object? status = null,Object? purchasedAt = null,Object? amountPaidCents = null,Object? currency = null,Object? seatLabel = freezed,Object? squadId = freezed,}) {
  return _then(_Ticket(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,eventStartsAt: null == eventStartsAt ? _self.eventStartsAt : eventStartsAt // ignore: cast_nullable_to_non_nullable
as DateTime,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,organizerName: null == organizerName ? _self.organizerName : organizerName // ignore: cast_nullable_to_non_nullable
as String,organizer: null == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as OrganizerType,holderName: null == holderName ? _self.holderName : holderName // ignore: cast_nullable_to_non_nullable
as String,qrPayload: null == qrPayload ? _self.qrPayload : qrPayload // ignore: cast_nullable_to_non_nullable
as String,shortCode: null == shortCode ? _self.shortCode : shortCode // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TicketStatus,purchasedAt: null == purchasedAt ? _self.purchasedAt : purchasedAt // ignore: cast_nullable_to_non_nullable
as DateTime,amountPaidCents: null == amountPaidCents ? _self.amountPaidCents : amountPaidCents // ignore: cast_nullable_to_non_nullable
as int,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,seatLabel: freezed == seatLabel ? _self.seatLabel : seatLabel // ignore: cast_nullable_to_non_nullable
as String?,squadId: freezed == squadId ? _self.squadId : squadId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
