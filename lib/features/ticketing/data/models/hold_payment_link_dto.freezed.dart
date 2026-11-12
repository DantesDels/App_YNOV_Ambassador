// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hold_payment_link_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HoldPaymentLinkDto {

 String get id; String get url; String get label; DateTime? get claimedAt;
/// Create a copy of HoldPaymentLinkDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HoldPaymentLinkDtoCopyWith<HoldPaymentLinkDto> get copyWith => _$HoldPaymentLinkDtoCopyWithImpl<HoldPaymentLinkDto>(this as HoldPaymentLinkDto, _$identity);

  /// Serializes this HoldPaymentLinkDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as HoldPaymentLinkDto;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HoldPaymentLinkDto&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.url, _this.url) || other.url == _this.url)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.claimedAt, _this.claimedAt) || other.claimedAt == _this.claimedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as HoldPaymentLinkDto;
  return Object.hash(runtimeType,_this.id,_this.url,_this.label,_this.claimedAt);
}

@override
String toString() {
  final _this = this as HoldPaymentLinkDto;
  return 'HoldPaymentLinkDto(id: ${_this.id}, url: ${_this.url}, label: ${_this.label}, claimedAt: ${_this.claimedAt})';
}


}

/// @nodoc
abstract mixin class $HoldPaymentLinkDtoCopyWith<$Res>  {
  factory $HoldPaymentLinkDtoCopyWith(HoldPaymentLinkDto value, $Res Function(HoldPaymentLinkDto) _then) = _$HoldPaymentLinkDtoCopyWithImpl;
@useResult
$Res call({
 String id, String url, String label, DateTime? claimedAt
});




}
/// @nodoc
class _$HoldPaymentLinkDtoCopyWithImpl<$Res>
    implements $HoldPaymentLinkDtoCopyWith<$Res> {
  _$HoldPaymentLinkDtoCopyWithImpl(this._self, this._then);

  final HoldPaymentLinkDto _self;
  final $Res Function(HoldPaymentLinkDto) _then;

/// Create a copy of HoldPaymentLinkDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? url = null,Object? label = null,Object? claimedAt = freezed,}) {
  return _then(HoldPaymentLinkDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,claimedAt: freezed == claimedAt ? _self.claimedAt : claimedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [HoldPaymentLinkDto].
extension HoldPaymentLinkDtoPatterns on HoldPaymentLinkDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HoldPaymentLinkDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HoldPaymentLinkDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HoldPaymentLinkDto value)  $default,){
final _that = this;
switch (_that) {
case _HoldPaymentLinkDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HoldPaymentLinkDto value)?  $default,){
final _that = this;
switch (_that) {
case _HoldPaymentLinkDto() when $default != null:
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
case _HoldPaymentLinkDto() when $default != null:
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
case _HoldPaymentLinkDto():
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
case _HoldPaymentLinkDto() when $default != null:
return $default(_that.id,_that.url,_that.label,_that.claimedAt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _HoldPaymentLinkDto implements HoldPaymentLinkDto {
  const _HoldPaymentLinkDto({required this.id, required this.url, required this.label, this.claimedAt});
  factory _HoldPaymentLinkDto.fromJson(Map<String, dynamic> json) => _$HoldPaymentLinkDtoFromJson(json);

@override final  String id;
@override final  String url;
@override final  String label;
@override final  DateTime? claimedAt;

/// Create a copy of HoldPaymentLinkDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HoldPaymentLinkDtoCopyWith<_HoldPaymentLinkDto> get copyWith => __$HoldPaymentLinkDtoCopyWithImpl<_HoldPaymentLinkDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HoldPaymentLinkDtoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HoldPaymentLinkDto&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.label, label) || other.label == label)&&(identical(other.claimedAt, claimedAt) || other.claimedAt == claimedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,url,label,claimedAt);
}

@override
String toString() {
    return 'HoldPaymentLinkDto(id: $id, url: $url, label: $label, claimedAt: $claimedAt)';
}


}

/// @nodoc
abstract mixin class _$HoldPaymentLinkDtoCopyWith<$Res> implements $HoldPaymentLinkDtoCopyWith<$Res> {
  factory _$HoldPaymentLinkDtoCopyWith(_HoldPaymentLinkDto value, $Res Function(_HoldPaymentLinkDto) _then) = __$HoldPaymentLinkDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String url, String label, DateTime? claimedAt
});




}
/// @nodoc
class __$HoldPaymentLinkDtoCopyWithImpl<$Res>
    implements _$HoldPaymentLinkDtoCopyWith<$Res> {
  __$HoldPaymentLinkDtoCopyWithImpl(this._self, this._then);

  final _HoldPaymentLinkDto _self;
  final $Res Function(_HoldPaymentLinkDto) _then;

/// Create a copy of HoldPaymentLinkDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = null,Object? label = null,Object? claimedAt = freezed,}) {
  return _then(_HoldPaymentLinkDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,claimedAt: freezed == claimedAt ? _self.claimedAt : claimedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
