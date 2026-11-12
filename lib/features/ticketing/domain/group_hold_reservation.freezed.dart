// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_hold_reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HoldPaymentLink {

 String get id; String get url; String get label; DateTime? get claimedAt;
/// Create a copy of HoldPaymentLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HoldPaymentLinkCopyWith<HoldPaymentLink> get copyWith => _$HoldPaymentLinkCopyWithImpl<HoldPaymentLink>(this as HoldPaymentLink, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as HoldPaymentLink;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HoldPaymentLink&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.url, _this.url) || other.url == _this.url)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.claimedAt, _this.claimedAt) || other.claimedAt == _this.claimedAt));
}


@override
int get hashCode {
  final _this = this as HoldPaymentLink;
  return Object.hash(runtimeType,_this.id,_this.url,_this.label,_this.claimedAt);
}

@override
String toString() {
  final _this = this as HoldPaymentLink;
  return 'HoldPaymentLink(id: ${_this.id}, url: ${_this.url}, label: ${_this.label}, claimedAt: ${_this.claimedAt})';
}


}

/// @nodoc
abstract mixin class $HoldPaymentLinkCopyWith<$Res>  {
  factory $HoldPaymentLinkCopyWith(HoldPaymentLink value, $Res Function(HoldPaymentLink) _then) = _$HoldPaymentLinkCopyWithImpl;
@useResult
$Res call({
 String id, String url, String label, DateTime? claimedAt
});




}
/// @nodoc
class _$HoldPaymentLinkCopyWithImpl<$Res>
    implements $HoldPaymentLinkCopyWith<$Res> {
  _$HoldPaymentLinkCopyWithImpl(this._self, this._then);

  final HoldPaymentLink _self;
  final $Res Function(HoldPaymentLink) _then;

/// Create a copy of HoldPaymentLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? url = null,Object? label = null,Object? claimedAt = freezed,}) {
  return _then(HoldPaymentLink(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,claimedAt: freezed == claimedAt ? _self.claimedAt : claimedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [HoldPaymentLink].
extension HoldPaymentLinkPatterns on HoldPaymentLink {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HoldPaymentLink value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HoldPaymentLink() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HoldPaymentLink value)  $default,){
final _that = this;
switch (_that) {
case _HoldPaymentLink():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HoldPaymentLink value)?  $default,){
final _that = this;
switch (_that) {
case _HoldPaymentLink() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String url,  String label,  DateTime? claimedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HoldPaymentLink() when $default != null:
return $default(_that.id,_that.url,_that.label,_that.claimedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String url,  String label,  DateTime? claimedAt)  $default,) {final _that = this;
switch (_that) {
case _HoldPaymentLink():
return $default(_that.id,_that.url,_that.label,_that.claimedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String url,  String label,  DateTime? claimedAt)?  $default,) {final _that = this;
switch (_that) {
case _HoldPaymentLink() when $default != null:
return $default(_that.id,_that.url,_that.label,_that.claimedAt);case _:
  return null;

}
}

}

/// @nodoc


class _HoldPaymentLink extends HoldPaymentLink {
  const _HoldPaymentLink({required this.id, required this.url, required this.label, this.claimedAt}): super._();
  

@override final  String id;
@override final  String url;
@override final  String label;
@override final  DateTime? claimedAt;

/// Create a copy of HoldPaymentLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HoldPaymentLinkCopyWith<_HoldPaymentLink> get copyWith => __$HoldPaymentLinkCopyWithImpl<_HoldPaymentLink>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HoldPaymentLink&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.label, label) || other.label == label)&&(identical(other.claimedAt, claimedAt) || other.claimedAt == claimedAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,url,label,claimedAt);
}

@override
String toString() {
    return 'HoldPaymentLink(id: $id, url: $url, label: $label, claimedAt: $claimedAt)';
}


}

/// @nodoc
abstract mixin class _$HoldPaymentLinkCopyWith<$Res> implements $HoldPaymentLinkCopyWith<$Res> {
  factory _$HoldPaymentLinkCopyWith(_HoldPaymentLink value, $Res Function(_HoldPaymentLink) _then) = __$HoldPaymentLinkCopyWithImpl;
@override @useResult
$Res call({
 String id, String url, String label, DateTime? claimedAt
});




}
/// @nodoc
class __$HoldPaymentLinkCopyWithImpl<$Res>
    implements _$HoldPaymentLinkCopyWith<$Res> {
  __$HoldPaymentLinkCopyWithImpl(this._self, this._then);

  final _HoldPaymentLink _self;
  final $Res Function(_HoldPaymentLink) _then;

/// Create a copy of HoldPaymentLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = null,Object? label = null,Object? claimedAt = freezed,}) {
  return _then(_HoldPaymentLink(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,claimedAt: freezed == claimedAt ? _self.claimedAt : claimedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$GroupHoldReservation {

 String get id; String get eventId; String get eventTitle; int get seats; DateTime get expiresAt; List<HoldPaymentLink> get paymentLinks; String get currency; int get unitAmountCents;
/// Create a copy of GroupHoldReservation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupHoldReservationCopyWith<GroupHoldReservation> get copyWith => _$GroupHoldReservationCopyWithImpl<GroupHoldReservation>(this as GroupHoldReservation, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GroupHoldReservation;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupHoldReservation&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.eventId, _this.eventId) || other.eventId == _this.eventId)&&(identical(other.eventTitle, _this.eventTitle) || other.eventTitle == _this.eventTitle)&&(identical(other.seats, _this.seats) || other.seats == _this.seats)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&const DeepCollectionEquality().equals(other.paymentLinks, _this.paymentLinks)&&(identical(other.currency, _this.currency) || other.currency == _this.currency)&&(identical(other.unitAmountCents, _this.unitAmountCents) || other.unitAmountCents == _this.unitAmountCents));
}


@override
int get hashCode {
  final _this = this as GroupHoldReservation;
  return Object.hash(runtimeType,_this.id,_this.eventId,_this.eventTitle,_this.seats,_this.expiresAt,const DeepCollectionEquality().hash(_this.paymentLinks),_this.currency,_this.unitAmountCents);
}

@override
String toString() {
  final _this = this as GroupHoldReservation;
  return 'GroupHoldReservation(id: ${_this.id}, eventId: ${_this.eventId}, eventTitle: ${_this.eventTitle}, seats: ${_this.seats}, expiresAt: ${_this.expiresAt}, paymentLinks: ${_this.paymentLinks}, currency: ${_this.currency}, unitAmountCents: ${_this.unitAmountCents})';
}


}

/// @nodoc
abstract mixin class $GroupHoldReservationCopyWith<$Res>  {
  factory $GroupHoldReservationCopyWith(GroupHoldReservation value, $Res Function(GroupHoldReservation) _then) = _$GroupHoldReservationCopyWithImpl;
@useResult
$Res call({
 String id, String eventId, String eventTitle, int seats, DateTime expiresAt, List<HoldPaymentLink> paymentLinks, String currency, int unitAmountCents
});




}
/// @nodoc
class _$GroupHoldReservationCopyWithImpl<$Res>
    implements $GroupHoldReservationCopyWith<$Res> {
  _$GroupHoldReservationCopyWithImpl(this._self, this._then);

  final GroupHoldReservation _self;
  final $Res Function(GroupHoldReservation) _then;

/// Create a copy of GroupHoldReservation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? eventId = null,Object? eventTitle = null,Object? seats = null,Object? expiresAt = null,Object? paymentLinks = null,Object? currency = null,Object? unitAmountCents = null,}) {
  return _then(GroupHoldReservation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,seats: null == seats ? _self.seats : seats // ignore: cast_nullable_to_non_nullable
as int,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,paymentLinks: null == paymentLinks ? _self.paymentLinks : paymentLinks // ignore: cast_nullable_to_non_nullable
as List<HoldPaymentLink>,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,unitAmountCents: null == unitAmountCents ? _self.unitAmountCents : unitAmountCents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupHoldReservation].
extension GroupHoldReservationPatterns on GroupHoldReservation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupHoldReservation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupHoldReservation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupHoldReservation value)  $default,){
final _that = this;
switch (_that) {
case _GroupHoldReservation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupHoldReservation value)?  $default,){
final _that = this;
switch (_that) {
case _GroupHoldReservation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String eventId,  String eventTitle,  int seats,  DateTime expiresAt,  List<HoldPaymentLink> paymentLinks,  String currency,  int unitAmountCents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupHoldReservation() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String eventId,  String eventTitle,  int seats,  DateTime expiresAt,  List<HoldPaymentLink> paymentLinks,  String currency,  int unitAmountCents)  $default,) {final _that = this;
switch (_that) {
case _GroupHoldReservation():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String eventId,  String eventTitle,  int seats,  DateTime expiresAt,  List<HoldPaymentLink> paymentLinks,  String currency,  int unitAmountCents)?  $default,) {final _that = this;
switch (_that) {
case _GroupHoldReservation() when $default != null:
return $default(_that.id,_that.eventId,_that.eventTitle,_that.seats,_that.expiresAt,_that.paymentLinks,_that.currency,_that.unitAmountCents);case _:
  return null;

}
}

}

/// @nodoc


class _GroupHoldReservation extends GroupHoldReservation {
  const _GroupHoldReservation({required this.id, required this.eventId, required this.eventTitle, required this.seats, required this.expiresAt, required  List<HoldPaymentLink> paymentLinks, required this.currency, required this.unitAmountCents}): _paymentLinks = paymentLinks,super._();
  

@override final  String id;
@override final  String eventId;
@override final  String eventTitle;
@override final  int seats;
@override final  DateTime expiresAt;
 final  List<HoldPaymentLink> _paymentLinks;
@override List<HoldPaymentLink> get paymentLinks {
  if (_paymentLinks is EqualUnmodifiableListView) return _paymentLinks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paymentLinks);
}

@override final  String currency;
@override final  int unitAmountCents;

/// Create a copy of GroupHoldReservation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupHoldReservationCopyWith<_GroupHoldReservation> get copyWith => __$GroupHoldReservationCopyWithImpl<_GroupHoldReservation>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupHoldReservation&&(identical(other.id, id) || other.id == id)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.eventTitle, eventTitle) || other.eventTitle == eventTitle)&&(identical(other.seats, seats) || other.seats == seats)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&const DeepCollectionEquality().equals(other.paymentLinks, _paymentLinks)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.unitAmountCents, unitAmountCents) || other.unitAmountCents == unitAmountCents));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,eventId,eventTitle,seats,expiresAt,const DeepCollectionEquality().hash(_paymentLinks),currency,unitAmountCents);
}

@override
String toString() {
    return 'GroupHoldReservation(id: $id, eventId: $eventId, eventTitle: $eventTitle, seats: $seats, expiresAt: $expiresAt, paymentLinks: $paymentLinks, currency: $currency, unitAmountCents: $unitAmountCents)';
}


}

/// @nodoc
abstract mixin class _$GroupHoldReservationCopyWith<$Res> implements $GroupHoldReservationCopyWith<$Res> {
  factory _$GroupHoldReservationCopyWith(_GroupHoldReservation value, $Res Function(_GroupHoldReservation) _then) = __$GroupHoldReservationCopyWithImpl;
@override @useResult
$Res call({
 String id, String eventId, String eventTitle, int seats, DateTime expiresAt, List<HoldPaymentLink> paymentLinks, String currency, int unitAmountCents
});




}
/// @nodoc
class __$GroupHoldReservationCopyWithImpl<$Res>
    implements _$GroupHoldReservationCopyWith<$Res> {
  __$GroupHoldReservationCopyWithImpl(this._self, this._then);

  final _GroupHoldReservation _self;
  final $Res Function(_GroupHoldReservation) _then;

/// Create a copy of GroupHoldReservation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? eventId = null,Object? eventTitle = null,Object? seats = null,Object? expiresAt = null,Object? paymentLinks = null,Object? currency = null,Object? unitAmountCents = null,}) {
  return _then(_GroupHoldReservation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,eventTitle: null == eventTitle ? _self.eventTitle : eventTitle // ignore: cast_nullable_to_non_nullable
as String,seats: null == seats ? _self.seats : seats // ignore: cast_nullable_to_non_nullable
as int,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,paymentLinks: null == paymentLinks ? _self._paymentLinks : paymentLinks // ignore: cast_nullable_to_non_nullable
as List<HoldPaymentLink>,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,unitAmountCents: null == unitAmountCents ? _self.unitAmountCents : unitAmountCents // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
