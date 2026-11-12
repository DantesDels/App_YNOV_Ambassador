// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventDto {

 String get id; String get title; String get tagline; String get description; String get organizer; String get organizerName; String get venueName; String get address; DateTime get startsAt; DateTime get endsAt; String get category; EventCapacityDto get capacity; List<PricingTierDto> get tiers; List<EventAttendeeDto> get friendsAttending; List<String> get tags; String? get coverUrl; bool get isTrending; bool get isPresenceVisible; String? get squadId;
/// Create a copy of EventDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventDtoCopyWith<EventDto> get copyWith => _$EventDtoCopyWithImpl<EventDto>(this as EventDto, _$identity);

  /// Serializes this EventDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as EventDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventDto&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.tagline, _this.tagline) || other.tagline == _this.tagline)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.organizer, _this.organizer) || other.organizer == _this.organizer)&&(identical(other.organizerName, _this.organizerName) || other.organizerName == _this.organizerName)&&(identical(other.venueName, _this.venueName) || other.venueName == _this.venueName)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.startsAt, _this.startsAt) || other.startsAt == _this.startsAt)&&(identical(other.endsAt, _this.endsAt) || other.endsAt == _this.endsAt)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.capacity, _this.capacity) || other.capacity == _this.capacity)&&const DeepCollectionEquality().equals(other.tiers, _this.tiers)&&const DeepCollectionEquality().equals(other.friendsAttending, _this.friendsAttending)&&const DeepCollectionEquality().equals(other.tags, _this.tags)&&(identical(other.coverUrl, _this.coverUrl) || other.coverUrl == _this.coverUrl)&&(identical(other.isTrending, _this.isTrending) || other.isTrending == _this.isTrending)&&(identical(other.isPresenceVisible, _this.isPresenceVisible) || other.isPresenceVisible == _this.isPresenceVisible)&&(identical(other.squadId, _this.squadId) || other.squadId == _this.squadId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as EventDto;
  return Object.hashAll([runtimeType,_this.id,_this.title,_this.tagline,_this.description,_this.organizer,_this.organizerName,_this.venueName,_this.address,_this.startsAt,_this.endsAt,_this.category,_this.capacity,const DeepCollectionEquality().hash(_this.tiers),const DeepCollectionEquality().hash(_this.friendsAttending),const DeepCollectionEquality().hash(_this.tags),_this.coverUrl,_this.isTrending,_this.isPresenceVisible,_this.squadId]);
}

@override
String toString() {
  final _this = this as EventDto;
  return 'EventDto(id: ${_this.id}, title: ${_this.title}, tagline: ${_this.tagline}, description: ${_this.description}, organizer: ${_this.organizer}, organizerName: ${_this.organizerName}, venueName: ${_this.venueName}, address: ${_this.address}, startsAt: ${_this.startsAt}, endsAt: ${_this.endsAt}, category: ${_this.category}, capacity: ${_this.capacity}, tiers: ${_this.tiers}, friendsAttending: ${_this.friendsAttending}, tags: ${_this.tags}, coverUrl: ${_this.coverUrl}, isTrending: ${_this.isTrending}, isPresenceVisible: ${_this.isPresenceVisible}, squadId: ${_this.squadId})';
}


}

/// @nodoc
abstract mixin class $EventDtoCopyWith<$Res>  {
  factory $EventDtoCopyWith(EventDto value, $Res Function(EventDto) _then) = _$EventDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title, String tagline, String description, String organizer, String organizerName, String venueName, String address, DateTime startsAt, DateTime endsAt, String category, EventCapacityDto capacity, List<PricingTierDto> tiers, List<EventAttendeeDto> friendsAttending, List<String> tags, String? coverUrl, bool isTrending, bool isPresenceVisible, String? squadId
});


$EventCapacityDtoCopyWith<$Res> get capacity;

}
/// @nodoc
class _$EventDtoCopyWithImpl<$Res>
    implements $EventDtoCopyWith<$Res> {
  _$EventDtoCopyWithImpl(this._self, this._then);

  final EventDto _self;
  final $Res Function(EventDto) _then;

/// Create a copy of EventDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? tagline = null,Object? description = null,Object? organizer = null,Object? organizerName = null,Object? venueName = null,Object? address = null,Object? startsAt = null,Object? endsAt = null,Object? category = null,Object? capacity = null,Object? tiers = null,Object? friendsAttending = null,Object? tags = null,Object? coverUrl = freezed,Object? isTrending = null,Object? isPresenceVisible = null,Object? squadId = freezed,}) {
  return _then(EventDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,tagline: null == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,organizer: null == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as String,organizerName: null == organizerName ? _self.organizerName : organizerName // ignore: cast_nullable_to_non_nullable
as String,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,startsAt: null == startsAt ? _self.startsAt : startsAt // ignore: cast_nullable_to_non_nullable
as DateTime,endsAt: null == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as DateTime,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as EventCapacityDto,tiers: null == tiers ? _self.tiers : tiers // ignore: cast_nullable_to_non_nullable
as List<PricingTierDto>,friendsAttending: null == friendsAttending ? _self.friendsAttending : friendsAttending // ignore: cast_nullable_to_non_nullable
as List<EventAttendeeDto>,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,isTrending: null == isTrending ? _self.isTrending : isTrending // ignore: cast_nullable_to_non_nullable
as bool,isPresenceVisible: null == isPresenceVisible ? _self.isPresenceVisible : isPresenceVisible // ignore: cast_nullable_to_non_nullable
as bool,squadId: freezed == squadId ? _self.squadId : squadId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of EventDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventCapacityDtoCopyWith<$Res> get capacity {
  
  return $EventCapacityDtoCopyWith<$Res>(_self.capacity, (value) {
    return _then(_self.copyWith(capacity: value));
  });
}
}


/// Adds pattern-matching-related methods to [EventDto].
extension EventDtoPatterns on EventDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventDto value)  $default,){
final _that = this;
switch (_that) {
case _EventDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventDto value)?  $default,){
final _that = this;
switch (_that) {
case _EventDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String tagline,  String description,  String organizer,  String organizerName,  String venueName,  String address,  DateTime startsAt,  DateTime endsAt,  String category,  EventCapacityDto capacity,  List<PricingTierDto> tiers,  List<EventAttendeeDto> friendsAttending,  List<String> tags,  String? coverUrl,  bool isTrending,  bool isPresenceVisible,  String? squadId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String tagline,  String description,  String organizer,  String organizerName,  String venueName,  String address,  DateTime startsAt,  DateTime endsAt,  String category,  EventCapacityDto capacity,  List<PricingTierDto> tiers,  List<EventAttendeeDto> friendsAttending,  List<String> tags,  String? coverUrl,  bool isTrending,  bool isPresenceVisible,  String? squadId)  $default,) {final _that = this;
switch (_that) {
case _EventDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String tagline,  String description,  String organizer,  String organizerName,  String venueName,  String address,  DateTime startsAt,  DateTime endsAt,  String category,  EventCapacityDto capacity,  List<PricingTierDto> tiers,  List<EventAttendeeDto> friendsAttending,  List<String> tags,  String? coverUrl,  bool isTrending,  bool isPresenceVisible,  String? squadId)?  $default,) {final _that = this;
switch (_that) {
case _EventDto() when $default != null:
return $default(_that.id,_that.title,_that.tagline,_that.description,_that.organizer,_that.organizerName,_that.venueName,_that.address,_that.startsAt,_that.endsAt,_that.category,_that.capacity,_that.tiers,_that.friendsAttending,_that.tags,_that.coverUrl,_that.isTrending,_that.isPresenceVisible,_that.squadId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _EventDto implements EventDto {
  const _EventDto({required this.id, required this.title, required this.tagline, required this.description, required this.organizer, required this.organizerName, required this.venueName, required this.address, required this.startsAt, required this.endsAt, required this.category, required this.capacity, required  List<PricingTierDto> tiers,  List<EventAttendeeDto> friendsAttending = const <EventAttendeeDto>[],  List<String> tags = const <String>[], this.coverUrl, this.isTrending = false, this.isPresenceVisible = false, this.squadId}): _tiers = tiers,_friendsAttending = friendsAttending,_tags = tags;
  factory _EventDto.fromJson(Map<String, dynamic> json) => _$EventDtoFromJson(json);

@override final  String id;
@override final  String title;
@override final  String tagline;
@override final  String description;
@override final  String organizer;
@override final  String organizerName;
@override final  String venueName;
@override final  String address;
@override final  DateTime startsAt;
@override final  DateTime endsAt;
@override final  String category;
@override final  EventCapacityDto capacity;
 final  List<PricingTierDto> _tiers;
@override List<PricingTierDto> get tiers {
  if (_tiers is EqualUnmodifiableListView) return _tiers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tiers);
}

 final  List<EventAttendeeDto> _friendsAttending;
@override@JsonKey() List<EventAttendeeDto> get friendsAttending {
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

/// Create a copy of EventDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventDtoCopyWith<_EventDto> get copyWith => __$EventDtoCopyWithImpl<_EventDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.tagline, tagline) || other.tagline == tagline)&&(identical(other.description, description) || other.description == description)&&(identical(other.organizer, organizer) || other.organizer == organizer)&&(identical(other.organizerName, organizerName) || other.organizerName == organizerName)&&(identical(other.venueName, venueName) || other.venueName == venueName)&&(identical(other.address, address) || other.address == address)&&(identical(other.startsAt, startsAt) || other.startsAt == startsAt)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt)&&(identical(other.category, category) || other.category == category)&&(identical(other.capacity, capacity) || other.capacity == capacity)&&const DeepCollectionEquality().equals(other.tiers, _tiers)&&const DeepCollectionEquality().equals(other.friendsAttending, _friendsAttending)&&const DeepCollectionEquality().equals(other.tags, _tags)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl)&&(identical(other.isTrending, isTrending) || other.isTrending == isTrending)&&(identical(other.isPresenceVisible, isPresenceVisible) || other.isPresenceVisible == isPresenceVisible)&&(identical(other.squadId, squadId) || other.squadId == squadId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,title,tagline,description,organizer,organizerName,venueName,address,startsAt,endsAt,category,capacity,const DeepCollectionEquality().hash(_tiers),const DeepCollectionEquality().hash(_friendsAttending),const DeepCollectionEquality().hash(_tags),coverUrl,isTrending,isPresenceVisible,squadId]);
}

@override
String toString() {
    return 'EventDto(id: $id, title: $title, tagline: $tagline, description: $description, organizer: $organizer, organizerName: $organizerName, venueName: $venueName, address: $address, startsAt: $startsAt, endsAt: $endsAt, category: $category, capacity: $capacity, tiers: $tiers, friendsAttending: $friendsAttending, tags: $tags, coverUrl: $coverUrl, isTrending: $isTrending, isPresenceVisible: $isPresenceVisible, squadId: $squadId)';
}


}

/// @nodoc
abstract mixin class _$EventDtoCopyWith<$Res> implements $EventDtoCopyWith<$Res> {
  factory _$EventDtoCopyWith(_EventDto value, $Res Function(_EventDto) _then) = __$EventDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String tagline, String description, String organizer, String organizerName, String venueName, String address, DateTime startsAt, DateTime endsAt, String category, EventCapacityDto capacity, List<PricingTierDto> tiers, List<EventAttendeeDto> friendsAttending, List<String> tags, String? coverUrl, bool isTrending, bool isPresenceVisible, String? squadId
});


@override $EventCapacityDtoCopyWith<$Res> get capacity;

}
/// @nodoc
class __$EventDtoCopyWithImpl<$Res>
    implements _$EventDtoCopyWith<$Res> {
  __$EventDtoCopyWithImpl(this._self, this._then);

  final _EventDto _self;
  final $Res Function(_EventDto) _then;

/// Create a copy of EventDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? tagline = null,Object? description = null,Object? organizer = null,Object? organizerName = null,Object? venueName = null,Object? address = null,Object? startsAt = null,Object? endsAt = null,Object? category = null,Object? capacity = null,Object? tiers = null,Object? friendsAttending = null,Object? tags = null,Object? coverUrl = freezed,Object? isTrending = null,Object? isPresenceVisible = null,Object? squadId = freezed,}) {
  return _then(_EventDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,tagline: null == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,organizer: null == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as String,organizerName: null == organizerName ? _self.organizerName : organizerName // ignore: cast_nullable_to_non_nullable
as String,venueName: null == venueName ? _self.venueName : venueName // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,startsAt: null == startsAt ? _self.startsAt : startsAt // ignore: cast_nullable_to_non_nullable
as DateTime,endsAt: null == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as DateTime,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,capacity: null == capacity ? _self.capacity : capacity // ignore: cast_nullable_to_non_nullable
as EventCapacityDto,tiers: null == tiers ? _self._tiers : tiers // ignore: cast_nullable_to_non_nullable
as List<PricingTierDto>,friendsAttending: null == friendsAttending ? _self._friendsAttending : friendsAttending // ignore: cast_nullable_to_non_nullable
as List<EventAttendeeDto>,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,isTrending: null == isTrending ? _self.isTrending : isTrending // ignore: cast_nullable_to_non_nullable
as bool,isPresenceVisible: null == isPresenceVisible ? _self.isPresenceVisible : isPresenceVisible // ignore: cast_nullable_to_non_nullable
as bool,squadId: freezed == squadId ? _self.squadId : squadId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of EventDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventCapacityDtoCopyWith<$Res> get capacity {
  
  return $EventCapacityDtoCopyWith<$Res>(_self.capacity, (value) {
    return _then(_self.copyWith(capacity: value));
  });
}
}

// dart format on
