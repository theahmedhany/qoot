// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingState()';
}


}

/// @nodoc
class $OnboardingStateCopyWith<$Res>  {
$OnboardingStateCopyWith(OnboardingState _, $Res Function(OnboardingState) __);
}


/// Adds pattern-matching-related methods to [OnboardingState].
extension OnboardingStatePatterns on OnboardingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _OnboardingCompleted value)?  onboardingCompleted,TResult Function( _OnboardingUnCompleted value)?  onboardingUnCompleted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _OnboardingCompleted() when onboardingCompleted != null:
return onboardingCompleted(_that);case _OnboardingUnCompleted() when onboardingUnCompleted != null:
return onboardingUnCompleted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _OnboardingCompleted value)  onboardingCompleted,required TResult Function( _OnboardingUnCompleted value)  onboardingUnCompleted,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _OnboardingCompleted():
return onboardingCompleted(_that);case _OnboardingUnCompleted():
return onboardingUnCompleted(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _OnboardingCompleted value)?  onboardingCompleted,TResult? Function( _OnboardingUnCompleted value)?  onboardingUnCompleted,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _OnboardingCompleted() when onboardingCompleted != null:
return onboardingCompleted(_that);case _OnboardingUnCompleted() when onboardingUnCompleted != null:
return onboardingUnCompleted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  onboardingCompleted,TResult Function()?  onboardingUnCompleted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _OnboardingCompleted() when onboardingCompleted != null:
return onboardingCompleted();case _OnboardingUnCompleted() when onboardingUnCompleted != null:
return onboardingUnCompleted();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  onboardingCompleted,required TResult Function()  onboardingUnCompleted,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _OnboardingCompleted():
return onboardingCompleted();case _OnboardingUnCompleted():
return onboardingUnCompleted();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  onboardingCompleted,TResult? Function()?  onboardingUnCompleted,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _OnboardingCompleted() when onboardingCompleted != null:
return onboardingCompleted();case _OnboardingUnCompleted() when onboardingUnCompleted != null:
return onboardingUnCompleted();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements OnboardingState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingState.initial()';
}


}




/// @nodoc


class _OnboardingCompleted implements OnboardingState {
  const _OnboardingCompleted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingCompleted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingState.onboardingCompleted()';
}


}




/// @nodoc


class _OnboardingUnCompleted implements OnboardingState {
  const _OnboardingUnCompleted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingUnCompleted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingState.onboardingUnCompleted()';
}


}




// dart format on
