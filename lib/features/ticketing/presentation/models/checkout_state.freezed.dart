// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckoutState {

 bool get isQuoting; bool get isPaying; int get seats; CheckoutQuote? get quote; Ticket? get ticket; String? get errorMessage;
/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckoutStateCopyWith<CheckoutState> get copyWith => _$CheckoutStateCopyWithImpl<CheckoutState>(this as CheckoutState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CheckoutState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutState&&(identical(other.isQuoting, _this.isQuoting) || other.isQuoting == _this.isQuoting)&&(identical(other.isPaying, _this.isPaying) || other.isPaying == _this.isPaying)&&(identical(other.seats, _this.seats) || other.seats == _this.seats)&&(identical(other.quote, _this.quote) || other.quote == _this.quote)&&(identical(other.ticket, _this.ticket) || other.ticket == _this.ticket)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage));
}


@override
int get hashCode {
  final _this = this as CheckoutState;
  return Object.hash(runtimeType,_this.isQuoting,_this.isPaying,_this.seats,_this.quote,_this.ticket,_this.errorMessage);
}

@override
String toString() {
  final _this = this as CheckoutState;
  return 'CheckoutState(isQuoting: ${_this.isQuoting}, isPaying: ${_this.isPaying}, seats: ${_this.seats}, quote: ${_this.quote}, ticket: ${_this.ticket}, errorMessage: ${_this.errorMessage})';
}


}

/// @nodoc
abstract mixin class $CheckoutStateCopyWith<$Res>  {
  factory $CheckoutStateCopyWith(CheckoutState value, $Res Function(CheckoutState) _then) = _$CheckoutStateCopyWithImpl;
@useResult
$Res call({
 bool isQuoting, bool isPaying, int seats, CheckoutQuote? quote, Ticket? ticket, String? errorMessage
});


$CheckoutQuoteCopyWith<$Res>? get quote;$TicketCopyWith<$Res>? get ticket;

}
/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._self, this._then);

  final CheckoutState _self;
  final $Res Function(CheckoutState) _then;

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isQuoting = null,Object? isPaying = null,Object? seats = null,Object? quote = freezed,Object? ticket = freezed,Object? errorMessage = freezed,}) {
  return _then(CheckoutState(
isQuoting: null == isQuoting ? _self.isQuoting : isQuoting // ignore: cast_nullable_to_non_nullable
as bool,isPaying: null == isPaying ? _self.isPaying : isPaying // ignore: cast_nullable_to_non_nullable
as bool,seats: null == seats ? _self.seats : seats // ignore: cast_nullable_to_non_nullable
as int,quote: freezed == quote ? _self.quote : quote // ignore: cast_nullable_to_non_nullable
as CheckoutQuote?,ticket: freezed == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as Ticket?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutQuoteCopyWith<$Res>? get quote {
    if (_self.quote == null) {
    return null;
  }

  return $CheckoutQuoteCopyWith<$Res>(_self.quote!, (value) {
    return _then(_self.copyWith(quote: value));
  });
}/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketCopyWith<$Res>? get ticket {
    if (_self.ticket == null) {
    return null;
  }

  return $TicketCopyWith<$Res>(_self.ticket!, (value) {
    return _then(_self.copyWith(ticket: value));
  });
}
}


/// Adds pattern-matching-related methods to [CheckoutState].
extension CheckoutStatePatterns on CheckoutState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckoutState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckoutState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckoutState value)  $default,){
final _that = this;
switch (_that) {
case _CheckoutState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckoutState value)?  $default,){
final _that = this;
switch (_that) {
case _CheckoutState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isQuoting,  bool isPaying,  int seats,  CheckoutQuote? quote,  Ticket? ticket,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckoutState() when $default != null:
return $default(_that.isQuoting,_that.isPaying,_that.seats,_that.quote,_that.ticket,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isQuoting,  bool isPaying,  int seats,  CheckoutQuote? quote,  Ticket? ticket,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _CheckoutState():
return $default(_that.isQuoting,_that.isPaying,_that.seats,_that.quote,_that.ticket,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isQuoting,  bool isPaying,  int seats,  CheckoutQuote? quote,  Ticket? ticket,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _CheckoutState() when $default != null:
return $default(_that.isQuoting,_that.isPaying,_that.seats,_that.quote,_that.ticket,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _CheckoutState extends CheckoutState {
  const _CheckoutState({this.isQuoting = false, this.isPaying = false, this.seats = 1, this.quote, this.ticket, this.errorMessage}): super._();
  

@override@JsonKey() final  bool isQuoting;
@override@JsonKey() final  bool isPaying;
@override@JsonKey() final  int seats;
@override final  CheckoutQuote? quote;
@override final  Ticket? ticket;
@override final  String? errorMessage;

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckoutStateCopyWith<_CheckoutState> get copyWith => __$CheckoutStateCopyWithImpl<_CheckoutState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutState&&(identical(other.isQuoting, isQuoting) || other.isQuoting == isQuoting)&&(identical(other.isPaying, isPaying) || other.isPaying == isPaying)&&(identical(other.seats, seats) || other.seats == seats)&&(identical(other.quote, quote) || other.quote == quote)&&(identical(other.ticket, ticket) || other.ticket == ticket)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isQuoting,isPaying,seats,quote,ticket,errorMessage);
}

@override
String toString() {
    return 'CheckoutState(isQuoting: $isQuoting, isPaying: $isPaying, seats: $seats, quote: $quote, ticket: $ticket, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$CheckoutStateCopyWith<$Res> implements $CheckoutStateCopyWith<$Res> {
  factory _$CheckoutStateCopyWith(_CheckoutState value, $Res Function(_CheckoutState) _then) = __$CheckoutStateCopyWithImpl;
@override @useResult
$Res call({
 bool isQuoting, bool isPaying, int seats, CheckoutQuote? quote, Ticket? ticket, String? errorMessage
});


@override $CheckoutQuoteCopyWith<$Res>? get quote;@override $TicketCopyWith<$Res>? get ticket;

}
/// @nodoc
class __$CheckoutStateCopyWithImpl<$Res>
    implements _$CheckoutStateCopyWith<$Res> {
  __$CheckoutStateCopyWithImpl(this._self, this._then);

  final _CheckoutState _self;
  final $Res Function(_CheckoutState) _then;

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isQuoting = null,Object? isPaying = null,Object? seats = null,Object? quote = freezed,Object? ticket = freezed,Object? errorMessage = freezed,}) {
  return _then(_CheckoutState(
isQuoting: null == isQuoting ? _self.isQuoting : isQuoting // ignore: cast_nullable_to_non_nullable
as bool,isPaying: null == isPaying ? _self.isPaying : isPaying // ignore: cast_nullable_to_non_nullable
as bool,seats: null == seats ? _self.seats : seats // ignore: cast_nullable_to_non_nullable
as int,quote: freezed == quote ? _self.quote : quote // ignore: cast_nullable_to_non_nullable
as CheckoutQuote?,ticket: freezed == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as Ticket?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckoutQuoteCopyWith<$Res>? get quote {
    if (_self.quote == null) {
    return null;
  }

  return $CheckoutQuoteCopyWith<$Res>(_self.quote!, (value) {
    return _then(_self.copyWith(quote: value));
  });
}/// Create a copy of CheckoutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketCopyWith<$Res>? get ticket {
    if (_self.ticket == null) {
    return null;
  }

  return $TicketCopyWith<$Res>(_self.ticket!, (value) {
    return _then(_self.copyWith(ticket: value));
  });
}
}

// dart format on
