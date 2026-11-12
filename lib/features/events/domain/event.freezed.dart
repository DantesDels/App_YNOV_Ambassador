// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Event {

 String get id; String get title; String get tagline; String get description; OrganizerType get organizer; String get organizerName; String get venueName; String get address; DateTime get startsAt; DateTime get endsAt; EventCategory get category; EventCapacity get capacity; List<PricingTier> get tiers; List<EventAttendee> get friendsAttending; List<String> get tags; String? get coverUrl; bool get isTrending; bool get isPresenceVisible; String? get squadId;
/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventCopyWith<Event> get copyWith => _$EventCopyWithImpl<Event>(this as Event, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Event;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Event&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.tagline, _this.tagline) || other.tagline == _this.tagline)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.organizer, _this.organizer) || other.organizer == _this.organizer)&&(identical(other.organizerName, _this.organizerName) || other.organizerName == _this.organizerName)&&(identical(other.venueName, _this.venueName) || other.venueName == _this.venueName)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.startsAt, _this.startsAt) || other.startsAt == _this.startsAt)&&(identical(other.endsAt, _this.endsAt) || other.endsAt == _this.endsAt)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.capacity, _this.capacity) || other.capacity == _this.capacity)&&const DeepCollectionEquality().equals(other.tiers, _this.tiers)&&const DeepCollectionEquality().equals(other.friendsAttending, _this.friendsAttending)&&const DeepCollectionEquality().equals(other.tags, _this.tags)&&(identical(other.coverUrl, _this.coverUrl) || other.coverUrl == _this.coverUrl)&&(identical(other.isTrending, _this.isTrending) || other.isTrending == _this.isTrending)&&(identical(other.isPresenceVisible, _this.isPresenceVisible) || other.isPresenceVisible == _this.isPresenceVisible)&&(identical(other.squadId, _this.squadId) || other.squadId == _this.squadId));
}


@override
int get hashCode {
  final _this = this as Event;
  return Object.hashAll([runtimeType,_this.id,_this.title,_this.tagline,_this.description,_this.organizer,_this.organizerName,_this.venueName,_this.address,_this.startsAt,_this.endsAt,_this.category,_this.capacity,const DeepCollectionEquality().hash(_this.tiers),const DeepCollectionEquality().hash(_this.friendsAttending),const DeepCollectionEquality().hash(_this.tags),_this.coverUrl,_this.isTrending,_this.isPresenceVisible,_this.squadId]);
}

@override
String toString() {
  final _this = this as Event;
  return 'Event(id: ${_this.id}, title: ${_this.title}, tagline: ${_this.tagline}, description: ${_this.description}, organizer: ${_this.organizer}, organizerName: ${_this.organizerName}, venueName: ${_this.venueName}, address: ${_this.address}, startsAt: ${_this.startsAt}, endsAt: ${_this.endsAt}, category: ${_this.category}, capacity: ${_this.capacity}, tiers: ${_this.tiers}, friendsAttending: ${_this.friendsAttending}, tags: ${_this.tags}, coverUrl: ${_this.coverUrl}, isTrending: ${_this.isTrending}, isPresenceVisible: ${_this.isPresenceVisible}, squadId: ${_this.squadId})';
}


}

/// @nodoc
abstract mixin class $EventCopyWith<$Res>  {
  factory $EventCopyWith(Event value, $Res Function(Event) _then) = _$EventCopyWithImpl;
@useResult
$Res call({
 String id, String title, String tagline, String description, OrganizerType organizer, String organizerName, String venueName, String address, DateTime startsAt, DateTime endsAt, EventCategory category, EventCapacity capacity, List<PricingTier> tiers, List<EventAttendee> friendsAttending, List<String> tags, String? coverUrl, bool isTrending, bool isPresenceVisible, String? squadId
});


$EventCapacityCopyWith<$Res> get capacity;

}
/// @nodoc
class _$EventCopyWithImpl<$Res>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._self, this._then);

  final Event _self;
  final $Res Function(Event) _then;

/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? tagline = null,Object? description = null,Object? organizer = null,Object? organizerName = null,Object? venueName = null,Object? address = null,Object? startsAt = null,Object? endsAt = null,Object? category = null,Object? capacity = null,Object? tiers = null,Object? friendsAttending = null,Object? tags = null,Object? coverUrl = freezed,Object? isTrending = null,Object? isPresenceVisible = null,Object? squadId = freezed,}) {
  return _then(Event(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,tagline: null == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,organizer: null == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as OrganizerType,organizerName: null == organizerName ? _self.organizerName : organizerName // ignore: cast_nullable_to_non_nullable
as String,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,startsAt: null == startsAt ? _self.startsAt : startsAt // ignore: cast_nullable_to_non_nullable
as DateTime,endsAt: null == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as DateTime,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as EventCategory,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as EventCapacity,tiers: null == tiers ? _self.tiers : tiers // ignore: cast_nullable_to_non_nullable
as List<PricingTier>,friendsAttending: null == friendsAttending ? _self.friendsAttending : friendsAttending // ignore: cast_nullable_to_non_nullable
as List<EventAttendee>,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,isTrending: null == isTrending ? _self.isTrending : isTrending // ignore: cast_nullable_to_non_nullable
as bool,isPresenceVisible: null == isPresenceVisible ? _self.isPresenceVisible : isPresenceVisible // ignore: cast_nullable_to_non_nullable
as bool,squadId: freezed == squadId ? _self.squadId : squadId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventCapacityCopyWith<$Res> get capacity {
  
  return $EventCapacityCopyWith<$Res>(_self.capacity, (value) {
    return _then(_self.copyWith(capacity: value));
  });
}
}


/// Adds pattern-matching-related methods to [Event].
extension EventPatterns on Event {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Event value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Event() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Event value)  $default,){
final _that = this;
switch (_that) {
case _Event():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Event value)?  $default,){
final _that = this;
switch (_that) {
case _Event() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String tagline,  String description,  OrganizerType organizer,  String organizerName,  String venueName,  String address,  DateTime startsAt,  DateTime endsAt,  EventCategory category,  EventCapacity capacity,  List<PricingTier> tiers,  List<EventAttendee> friendsAttending,  List<String> tags,  String? coverUrl,  bool isTrending,  bool isPresenceVisible,  String? squadId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Event() when $default != null:
return $default(_that.id,_that.title,_that.tagline,_that.description,_that.organizer,_that.organizerName,_that.venueName,_that.address,_that.startsAt,_that.endsAt,_that.category,_that.capacity,_that.tiers,_that.friendsAttending,_that.tags,_that.coverUrl,_that.isTrending,_that.isPresenceVisible,_that.squadId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String tagline,  String description,  OrganizerType organizer,  String organizerName,  String venueName,  String address,  DateTime startsAt,  DateTime endsAt,  EventCategory category,  EventCapacity capacity,  List<PricingTier> tiers,  List<EventAttendee> friendsAttending,  List<String> tags,  String? coverUrl,  bool isTrending,  bool isPresenceVisible,  String? squadId)  $default,) {final _that = this;
switch (_that) {
case _Event():
return $default(_that.id,_that.title,_that.tagline,_that.description,_that.organizer,_that.organizerName,_that.venueName,_that.address,_that.startsAt,_that.endsAt,_that.category,_that.capacity,_that.tiers,_that.friendsAttending,_that.tags,_that.coverUrl,_that.isTrending,_that.isPresenceVisible,_that.squadId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String tagline,  String description,  OrganizerType organizer,  String organizerName,  String venueName,  String address,  DateTime startsAt,  DateTime endsAt,  EventCategory category,  EventCapacity capacity,  List<PricingTier> tiers,  List<EventAttendee> friendsAttending,  List<String> tags,  String? coverUrl,  bool isTrending,  bool isPresenceVisible,  String? squadId)?  $default,) {final _that = this;
switch (_that) {
case _Event() when $default != null:
return $default(_that.id,_that.title,_that.tagline,_that.description,_that.organizer,_that.organizerName,_that.venueName,_that.address,_that.startsAt,_that.endsAt,_that.category,_that.capacity,_that.tiers,_that.friendsAttending,_that.tags,_that.coverUrl,_that.isTrending,_that.isPresenceVisible,_that.squadId);case _:
  return null;

}
}

}

/// @nodoc


class _Event extends Event {
  const _Event({required this.id, required this.title, required this.tagline, required this.description, required this.organizer, required this.organizerName, required this.venueName, required this.address, required this.startsAt, required this.endsAt, required this.category, required this.capacity, required  List<PricingTier> tiers,  List<EventAttendee> friendsAttending = const <EventAttendee>[],  List<String> tags = const <String>[], this.coverUrl, this.isTrending = false, this.isPresenceVisible = false, this.squadId}): _tiers = tiers,_friendsAttending = friendsAttending,_tags = tags,super._();
  

@override final  String id;
@override final  String title;
@override final  String tagline;
@override final  String description;
@override final  OrganizerType organizer;
@override final  String organizerName;
@override final  String venueName;
@override final  String address;
@override final  DateTime startsAt;
@override final  DateTime endsAt;
@override final  EventCategory category;
@override final  EventCapacity capacity;
 final  List<PricingTier> _tiers;
@override List<PricingTier> get tiers {
  if (_tiers is EqualUnmodifiableListView) return _tiers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tiers);
}

 final  List<EventAttendee> _friendsAttending;
@override@JsonKey() List<EventAttendee> get friendsAttending {
  if (_friendsAttending is EqualUnmodifiableListView) return _friendsAttending;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_friendsAttending);
}

 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  String? coverUrl;
@override@JsonKey() final  bool isTrending;
@override@JsonKey() final  bool isPresenceVisible;
@override final  String? squadId;

/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventCopyWith<_Event> get copyWith => __$EventCopyWithImpl<_Event>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Event&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.tagline, tagline) || other.tagline == tagline)&&(identical(other.description, description) || other.description == description)&&(identical(other.organizer, organizer) || other.organizer == organizer)&&(identical(other.organizerName, organizerName) || other.organizerName == organizerName)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.address, address) || other.address == address)&&(identical(other.startsAt, startsAt) || other.startsAt == startsAt)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt)&&(identical(other.category, category) || other.category == category)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&const DeepCollectionEquality().equals(other.tiers, _tiers)&&const DeepCollectionEquality().equals(other.friendsAttending, _friendsAttending)&&const DeepCollectionEquality().equals(other.tags, _tags)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl)&&(identical(other.isTrending, isTrending) || other.isTrending == isTrending)&&(identical(other.isPresenceVisible, isPresenceVisible) || other.isPresenceVisible == isPresenceVisible)&&(identical(other.squadId, squadId) || other.squadId == squadId));
}


@override
int get hashCode {
    return Object.hashAll([runtimeType,id,title,tagline,description,organizer,organizerName,venueName,address,startsAt,endsAt,category,capacity,const DeepCollectionEquality().hash(_tiers),const DeepCollectionEquality().hash(_friendsAttending),const DeepCollectionEquality().hash(_tags),coverUrl,isTrending,isPresenceVisible,squadId]);
}

@override
String toString() {
    return 'Event(id: $id, title: $title, tagline: $tagline, description: $description, organizer: $organizer, organizerName: $organizerName, venueName: $venueName, address: $address, startsAt: $startsAt, endsAt: $endsAt, category: $category, capacity: $capacity, tiers: $tiers, friendsAttending: $friendsAttending, tags: $tags, coverUrl: $coverUrl, isTrending: $isTrending, isPresenceVisible: $isPresenceVisible, squadId: $squadId)';
}


}

/// @nodoc
abstract mixin class _$EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$EventCopyWith(_Event value, $Res Function(_Event) _then) = __$EventCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String tagline, String description, OrganizerType organizer, String organizerName, String venueName, String address, DateTime startsAt, DateTime endsAt, EventCategory category, EventCapacity capacity, List<PricingTier> tiers, List<EventAttendee> friendsAttending, List<String> tags, String? coverUrl, bool isTrending, bool isPresenceVisible, String? squadId
});


@override $EventCapacityCopyWith<$Res> get capacity;

}
/// @nodoc
class __$EventCopyWithImpl<$Res>
    implements _$EventCopyWith<$Res> {
  __$EventCopyWithImpl(this._self, this._then);

  final _Event _self;
  final $Res Function(_Event) _then;

/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? tagline = null,Object? description = null,Object? organizer = null,Object? organizerName = null,Object? venueName = null,Object? address = null,Object? startsAt = null,Object? endsAt = null,Object? category = null,Object? capacity = null,Object? tiers = null,Object? friendsAttending = null,Object? tags = null,Object? coverUrl = freezed,Object? isTrending = null,Object? isPresenceVisible = null,Object? squadId = freezed,}) {
  return _then(_Event(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,tagline: null == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,organizer: null == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as OrganizerType,organizerName: null == organizerName ? _self.organizerName : organizerName // ignore: cast_nullable_to_non_nullable
as String,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,startsAt: null == startsAt ? _self.startsAt : startsAt // ignore: cast_nullable_to_non_nullable
as DateTime,endsAt: null == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as DateTime,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as EventCategory,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as EventCapacity,tiers: null == tiers ? _self._tiers : tiers // ignore: cast_nullable_to_non_nullable
as List<PricingTier>,friendsAttending: null == friendsAttending ? _self._friendsAttending : friendsAttending // ignore: cast_nullable_to_non_nullable
as List<EventAttendee>,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,isTrending: null == isTrending ? _self.isTrending : isTrending // ignore: cast_nullable_to_non_nullable
as bool,isPresenceVisible: null == isPresenceVisible ? _self.isPresenceVisible : isPresenceVisible // ignore: cast_nullable_to_non_nullable
as bool,squadId: freezed == squadId ? _self.squadId : squadId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventCapacityCopyWith<$Res> get capacity {
  
  return $EventCapacityCopyWith<$Res>(_self.capacity, (value) {
    return _then(_self.copyWith(capacity: value));
  });
}
}

// dart format on
