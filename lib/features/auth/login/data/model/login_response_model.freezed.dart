// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponseModel {

@JsonKey(name: 'isSuccess') bool get isSuccess;@JsonKey(name: 'message') String get message;@JsonKey(name: 'data') LoginDataModel? get data;@JsonKey(name: 'errors') List<dynamic>? get errors;
/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseModelCopyWith<LoginResponseModel> get copyWith => _$LoginResponseModelCopyWithImpl<LoginResponseModel>(this as LoginResponseModel, _$identity);

  /// Serializes this LoginResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponseModel&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccess,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'LoginResponseModel(isSuccess: $isSuccess, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $LoginResponseModelCopyWith<$Res>  {
  factory $LoginResponseModelCopyWith(LoginResponseModel value, $Res Function(LoginResponseModel) _then) = _$LoginResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'isSuccess') bool isSuccess,@JsonKey(name: 'message') String message,@JsonKey(name: 'data') LoginDataModel? data,@JsonKey(name: 'errors') List<dynamic>? errors
});


$LoginDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$LoginResponseModelCopyWithImpl<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  _$LoginResponseModelCopyWithImpl(this._self, this._then);

  final LoginResponseModel _self;
  final $Res Function(LoginResponseModel) _then;

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSuccess = null,Object? message = null,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LoginDataModel?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}
/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $LoginDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginResponseModel].
extension LoginResponseModelPatterns on LoginResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'isSuccess')  bool isSuccess, @JsonKey(name: 'message')  String message, @JsonKey(name: 'data')  LoginDataModel? data, @JsonKey(name: 'errors')  List<dynamic>? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
return $default(_that.isSuccess,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'isSuccess')  bool isSuccess, @JsonKey(name: 'message')  String message, @JsonKey(name: 'data')  LoginDataModel? data, @JsonKey(name: 'errors')  List<dynamic>? errors)  $default,) {final _that = this;
switch (_that) {
case _LoginResponseModel():
return $default(_that.isSuccess,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'isSuccess')  bool isSuccess, @JsonKey(name: 'message')  String message, @JsonKey(name: 'data')  LoginDataModel? data, @JsonKey(name: 'errors')  List<dynamic>? errors)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
return $default(_that.isSuccess,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResponseModel implements LoginResponseModel {
  const _LoginResponseModel({@JsonKey(name: 'isSuccess') required this.isSuccess, @JsonKey(name: 'message') required this.message, @JsonKey(name: 'data') this.data, @JsonKey(name: 'errors') final  List<dynamic>? errors}): _errors = errors;
  factory _LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);

@override@JsonKey(name: 'isSuccess') final  bool isSuccess;
@override@JsonKey(name: 'message') final  String message;
@override@JsonKey(name: 'data') final  LoginDataModel? data;
 final  List<dynamic>? _errors;
@override@JsonKey(name: 'errors') List<dynamic>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseModelCopyWith<_LoginResponseModel> get copyWith => __$LoginResponseModelCopyWithImpl<_LoginResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponseModel&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccess,message,data,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'LoginResponseModel(isSuccess: $isSuccess, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseModelCopyWith<$Res> implements $LoginResponseModelCopyWith<$Res> {
  factory _$LoginResponseModelCopyWith(_LoginResponseModel value, $Res Function(_LoginResponseModel) _then) = __$LoginResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'isSuccess') bool isSuccess,@JsonKey(name: 'message') String message,@JsonKey(name: 'data') LoginDataModel? data,@JsonKey(name: 'errors') List<dynamic>? errors
});


@override $LoginDataModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$LoginResponseModelCopyWithImpl<$Res>
    implements _$LoginResponseModelCopyWith<$Res> {
  __$LoginResponseModelCopyWithImpl(this._self, this._then);

  final _LoginResponseModel _self;
  final $Res Function(_LoginResponseModel) _then;

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSuccess = null,Object? message = null,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_LoginResponseModel(
isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as LoginDataModel?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginDataModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $LoginDataModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$LoginDataModel {

 String get token; String get tokenExpiry; UserModel get user;
/// Create a copy of LoginDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginDataModelCopyWith<LoginDataModel> get copyWith => _$LoginDataModelCopyWithImpl<LoginDataModel>(this as LoginDataModel, _$identity);

  /// Serializes this LoginDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginDataModel&&(identical(other.token, token) || other.token == token)&&(identical(other.tokenExpiry, tokenExpiry) || other.tokenExpiry == tokenExpiry)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,tokenExpiry,user);

@override
String toString() {
  return 'LoginDataModel(token: $token, tokenExpiry: $tokenExpiry, user: $user)';
}


}

/// @nodoc
abstract mixin class $LoginDataModelCopyWith<$Res>  {
  factory $LoginDataModelCopyWith(LoginDataModel value, $Res Function(LoginDataModel) _then) = _$LoginDataModelCopyWithImpl;
@useResult
$Res call({
 String token, String tokenExpiry, UserModel user
});


$UserModelCopyWith<$Res> get user;

}
/// @nodoc
class _$LoginDataModelCopyWithImpl<$Res>
    implements $LoginDataModelCopyWith<$Res> {
  _$LoginDataModelCopyWithImpl(this._self, this._then);

  final LoginDataModel _self;
  final $Res Function(LoginDataModel) _then;

/// Create a copy of LoginDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? tokenExpiry = null,Object? user = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,tokenExpiry: null == tokenExpiry ? _self.tokenExpiry : tokenExpiry // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}
/// Create a copy of LoginDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginDataModel].
extension LoginDataModelPatterns on LoginDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginDataModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token,  String tokenExpiry,  UserModel user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginDataModel() when $default != null:
return $default(_that.token,_that.tokenExpiry,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token,  String tokenExpiry,  UserModel user)  $default,) {final _that = this;
switch (_that) {
case _LoginDataModel():
return $default(_that.token,_that.tokenExpiry,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token,  String tokenExpiry,  UserModel user)?  $default,) {final _that = this;
switch (_that) {
case _LoginDataModel() when $default != null:
return $default(_that.token,_that.tokenExpiry,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginDataModel implements LoginDataModel {
  const _LoginDataModel({required this.token, required this.tokenExpiry, required this.user});
  factory _LoginDataModel.fromJson(Map<String, dynamic> json) => _$LoginDataModelFromJson(json);

@override final  String token;
@override final  String tokenExpiry;
@override final  UserModel user;

/// Create a copy of LoginDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginDataModelCopyWith<_LoginDataModel> get copyWith => __$LoginDataModelCopyWithImpl<_LoginDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginDataModel&&(identical(other.token, token) || other.token == token)&&(identical(other.tokenExpiry, tokenExpiry) || other.tokenExpiry == tokenExpiry)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,tokenExpiry,user);

@override
String toString() {
  return 'LoginDataModel(token: $token, tokenExpiry: $tokenExpiry, user: $user)';
}


}

/// @nodoc
abstract mixin class _$LoginDataModelCopyWith<$Res> implements $LoginDataModelCopyWith<$Res> {
  factory _$LoginDataModelCopyWith(_LoginDataModel value, $Res Function(_LoginDataModel) _then) = __$LoginDataModelCopyWithImpl;
@override @useResult
$Res call({
 String token, String tokenExpiry, UserModel user
});


@override $UserModelCopyWith<$Res> get user;

}
/// @nodoc
class __$LoginDataModelCopyWithImpl<$Res>
    implements _$LoginDataModelCopyWith<$Res> {
  __$LoginDataModelCopyWithImpl(this._self, this._then);

  final _LoginDataModel _self;
  final $Res Function(_LoginDataModel) _then;

/// Create a copy of LoginDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? tokenExpiry = null,Object? user = null,}) {
  return _then(_LoginDataModel(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,tokenExpiry: null == tokenExpiry ? _self.tokenExpiry : tokenExpiry // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}

/// Create a copy of LoginDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$UserModel {

 String get id; String get firstName; String get lastName; String get email; String get phoneNumber; String? get profileImage; List<String> get roles; bool get isVerified;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&const DeepCollectionEquality().equals(other.roles, roles)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,email,phoneNumber,profileImage,const DeepCollectionEquality().hash(roles),isVerified);

@override
String toString() {
  return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber, profileImage: $profileImage, roles: $roles, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
 String id, String firstName, String lastName, String email, String phoneNumber, String? profileImage, List<String> roles, bool isVerified
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? phoneNumber = null,Object? profileImage = freezed,Object? roles = null,Object? isVerified = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,roles: null == roles ? _self.roles : roles // ignore: cast_nullable_to_non_nullable
as List<String>,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String email,  String phoneNumber,  String? profileImage,  List<String> roles,  bool isVerified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.phoneNumber,_that.profileImage,_that.roles,_that.isVerified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String firstName,  String lastName,  String email,  String phoneNumber,  String? profileImage,  List<String> roles,  bool isVerified)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.phoneNumber,_that.profileImage,_that.roles,_that.isVerified);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String firstName,  String lastName,  String email,  String phoneNumber,  String? profileImage,  List<String> roles,  bool isVerified)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.email,_that.phoneNumber,_that.profileImage,_that.roles,_that.isVerified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({required this.id, required this.firstName, required this.lastName, required this.email, required this.phoneNumber, this.profileImage, required final  List<String> roles, required this.isVerified}): _roles = roles;
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override final  String id;
@override final  String firstName;
@override final  String lastName;
@override final  String email;
@override final  String phoneNumber;
@override final  String? profileImage;
 final  List<String> _roles;
@override List<String> get roles {
  if (_roles is EqualUnmodifiableListView) return _roles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_roles);
}

@override final  bool isVerified;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&const DeepCollectionEquality().equals(other._roles, _roles)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,email,phoneNumber,profileImage,const DeepCollectionEquality().hash(_roles),isVerified);

@override
String toString() {
  return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber, profileImage: $profileImage, roles: $roles, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String firstName, String lastName, String email, String phoneNumber, String? profileImage, List<String> roles, bool isVerified
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? email = null,Object? phoneNumber = null,Object? profileImage = freezed,Object? roles = null,Object? isVerified = null,}) {
  return _then(_UserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,roles: null == roles ? _self._roles : roles // ignore: cast_nullable_to_non_nullable
as List<String>,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
