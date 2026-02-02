// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_auth_error_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppAuthErrorState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppAuthErrorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppAuthErrorState()';
}


}

/// @nodoc
class $AppAuthErrorStateCopyWith<$Res>  {
$AppAuthErrorStateCopyWith(AppAuthErrorState _, $Res Function(AppAuthErrorState) __);
}


/// Adds pattern-matching-related methods to [AppAuthErrorState].
extension AppAuthErrorStatePatterns on AppAuthErrorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _AppErrorForbidden value)?  error403,TResult Function( _AppErrorUnAuthenticated value)?  error401,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _AppErrorForbidden() when error403 != null:
return error403(_that);case _AppErrorUnAuthenticated() when error401 != null:
return error401(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _AppErrorForbidden value)  error403,required TResult Function( _AppErrorUnAuthenticated value)  error401,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _AppErrorForbidden():
return error403(_that);case _AppErrorUnAuthenticated():
return error401(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _AppErrorForbidden value)?  error403,TResult? Function( _AppErrorUnAuthenticated value)?  error401,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _AppErrorForbidden() when error403 != null:
return error403(_that);case _AppErrorUnAuthenticated() when error401 != null:
return error401(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String? message)?  error403,TResult Function( String? message)?  error401,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _AppErrorForbidden() when error403 != null:
return error403(_that.message);case _AppErrorUnAuthenticated() when error401 != null:
return error401(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String? message)  error403,required TResult Function( String? message)  error401,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _AppErrorForbidden():
return error403(_that.message);case _AppErrorUnAuthenticated():
return error401(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String? message)?  error403,TResult? Function( String? message)?  error401,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _AppErrorForbidden() when error403 != null:
return error403(_that.message);case _AppErrorUnAuthenticated() when error401 != null:
return error401(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AppAuthErrorState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppAuthErrorState.initial()';
}


}




/// @nodoc


class _AppErrorForbidden implements AppAuthErrorState {
  const _AppErrorForbidden({this.message});
  

 final  String? message;

/// Create a copy of AppAuthErrorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppErrorForbiddenCopyWith<_AppErrorForbidden> get copyWith => __$AppErrorForbiddenCopyWithImpl<_AppErrorForbidden>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppErrorForbidden&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppAuthErrorState.error403(message: $message)';
}


}

/// @nodoc
abstract mixin class _$AppErrorForbiddenCopyWith<$Res> implements $AppAuthErrorStateCopyWith<$Res> {
  factory _$AppErrorForbiddenCopyWith(_AppErrorForbidden value, $Res Function(_AppErrorForbidden) _then) = __$AppErrorForbiddenCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$AppErrorForbiddenCopyWithImpl<$Res>
    implements _$AppErrorForbiddenCopyWith<$Res> {
  __$AppErrorForbiddenCopyWithImpl(this._self, this._then);

  final _AppErrorForbidden _self;
  final $Res Function(_AppErrorForbidden) _then;

/// Create a copy of AppAuthErrorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_AppErrorForbidden(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _AppErrorUnAuthenticated implements AppAuthErrorState {
  const _AppErrorUnAuthenticated({this.message});
  

 final  String? message;

/// Create a copy of AppAuthErrorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppErrorUnAuthenticatedCopyWith<_AppErrorUnAuthenticated> get copyWith => __$AppErrorUnAuthenticatedCopyWithImpl<_AppErrorUnAuthenticated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppErrorUnAuthenticated&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppAuthErrorState.error401(message: $message)';
}


}

/// @nodoc
abstract mixin class _$AppErrorUnAuthenticatedCopyWith<$Res> implements $AppAuthErrorStateCopyWith<$Res> {
  factory _$AppErrorUnAuthenticatedCopyWith(_AppErrorUnAuthenticated value, $Res Function(_AppErrorUnAuthenticated) _then) = __$AppErrorUnAuthenticatedCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$AppErrorUnAuthenticatedCopyWithImpl<$Res>
    implements _$AppErrorUnAuthenticatedCopyWith<$Res> {
  __$AppErrorUnAuthenticatedCopyWithImpl(this._self, this._then);

  final _AppErrorUnAuthenticated _self;
  final $Res Function(_AppErrorUnAuthenticated) _then;

/// Create a copy of AppAuthErrorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_AppErrorUnAuthenticated(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
