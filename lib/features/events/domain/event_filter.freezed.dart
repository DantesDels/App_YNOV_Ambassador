// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventFilter {

 EventCategory get category; OrganizerType? get organizer; String get query; bool get onlyAvailable; EventSort get sort;
/// Create a copy of EventFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventFilterCopyWith<EventFilter> get copyWith => _$EventFilterCopyWithImpl<EventFilter>(this as EventFilter, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as EventFilter;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventFilter&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.organizer, _this.organizer) || other.organizer == _this.organizer)&&(identical(other.query, _this.query) || other.query == _this.query)&&(identical(other.onlyAvailable, _this.onlyAvailable) || other.onlyAvailable == _this.onlyAvailable)&&(identical(other.sort, _this.sort) || other.sort == _this.sort));
}


@override
int get hashCode {
  final _this = this as EventFilter;
  return Object.hash(runtimeType,_this.category,_this.organizer,_this.query,_this.onlyAvailable,_this.sort);
}

@override
String toString() {
  final _this = this as EventFilter;
  return 'EventFilter(category: ${_this.category}, organizer: ${_this.organizer}, query: ${_this.query}, onlyAvailable: ${_this.onlyAvailable}, sort: ${_this.sort})';
}


}

/// @nodoc
abstract mixin class $EventFilterCopyWith<$Res>  {
  factory $EventFilterCopyWith(EventFilter value, $Res Function(EventFilter) _then) = _$EventFilterCopyWithImpl;
@useResult
$Res call({
 EventCategory category, OrganizerType? organizer, String query, bool onlyAvailable, EventSort sort
});




}
/// @nodoc
class _$EventFilterCopyWithImpl<$Res>
    implements $EventFilterCopyWith<$Res> {
  _$EventFilterCopyWithImpl(this._self, this._then);

  final EventFilter _self;
  final $Res Function(EventFilter) _then;

/// Create a copy of EventFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,Object? organizer = freezed,Object? query = null,Object? onlyAvailable = null,Object? sort = null,}) {
  return _then(EventFilter(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as EventCategory,organizer: freezed == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as OrganizerType?,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,onlyAvailable: null == onlyAvailable ? _self.onlyAvailable : onlyAvailable // ignore: cast_nullable_to_non_nullable
as bool,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as EventSort,
  ));
}

}


/// Adds pattern-matching-related methods to [EventFilter].
extension EventFilterPatterns on EventFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventFilter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventFilter value)  $default,){
final _that = this;
switch (_that) {
case _EventFilter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventFilter value)?  $default,){
final _that = this;
switch (_that) {
case _EventFilter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EventCategory category,  OrganizerType? organizer,  String query,  bool onlyAvailable,  EventSort sort)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventFilter() when $default != null:
return $default(_that.category,_that.organizer,_that.query,_that.onlyAvailable,_that.sort);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EventCategory category,  OrganizerType? organizer,  String query,  bool onlyAvailable,  EventSort sort)  $default,) {final _that = this;
switch (_that) {
case _EventFilter():
return $default(_that.category,_that.organizer,_that.query,_that.onlyAvailable,_that.sort);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EventCategory category,  OrganizerType? organizer,  String query,  bool onlyAvailable,  EventSort sort)?  $default,) {final _that = this;
switch (_that) {
case _EventFilter() when $default != null:
return $default(_that.category,_that.organizer,_that.query,_that.onlyAvailable,_that.sort);case _:
  return null;

}
}

}

/// @nodoc


class _EventFilter extends EventFilter {
  const _EventFilter({this.category = EventCategory.all, this.organizer, this.query = '', this.onlyAvailable = false, this.sort = EventSort.soonest}): super._();
  

@override@JsonKey() final  EventCategory category;
@override final  OrganizerType? organizer;
@override@JsonKey() final  String query;
@override@JsonKey() final  bool onlyAvailable;
@override@JsonKey() final  EventSort sort;

/// Create a copy of EventFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventFilterCopyWith<_EventFilter> get copyWith => __$EventFilterCopyWithImpl<_EventFilter>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventFilter&&(identical(other.category, category) || other.category == category)&&(identical(other.organizer, organizer) || other.organizer == organizer)&&(identical(other.query, query) || other.query == query)&&(identical(other.onlyAvailable, onlyAvailable) || other.onlyAvailable == onlyAvailable)&&(identical(other.sort, sort) || other.sort == sort));
}


@override
int get hashCode {
    return Object.hash(runtimeType,category,organizer,query,onlyAvailable,sort);
}

@override
String toString() {
    return 'EventFilter(category: $category, organizer: $organizer, query: $query, onlyAvailable: $onlyAvailable, sort: $sort)';
}


}

/// @nodoc
abstract mixin class _$EventFilterCopyWith<$Res> implements $EventFilterCopyWith<$Res> {
  factory _$EventFilterCopyWith(_EventFilter value, $Res Function(_EventFilter) _then) = __$EventFilterCopyWithImpl;
@override @useResult
$Res call({
 EventCategory category, OrganizerType? organizer, String query, bool onlyAvailable, EventSort sort
});




}
/// @nodoc
class __$EventFilterCopyWithImpl<$Res>
    implements _$EventFilterCopyWith<$Res> {
  __$EventFilterCopyWithImpl(this._self, this._then);

  final _EventFilter _self;
  final $Res Function(_EventFilter) _then;

/// Create a copy of EventFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,Object? organizer = freezed,Object? query = null,Object? onlyAvailable = null,Object? sort = null,}) {
  return _then(_EventFilter(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as EventCategory,organizer: freezed == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as OrganizerType?,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,onlyAvailable: null == onlyAvailable ? _self.onlyAvailable : onlyAvailable // ignore: cast_nullable_to_non_nullable
as bool,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as EventSort,
  ));
}


}

// dart format on
