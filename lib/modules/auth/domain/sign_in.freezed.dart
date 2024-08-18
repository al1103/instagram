// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignInData _$SignInDataFromJson(Map<String, dynamic> json) {
  return _SignInData.fromJson(json);
}

/// @nodoc
mixin _$SignInData {
  @JsonKey(name: 'login_id')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInDataCopyWith<SignInData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInDataCopyWith<$Res> {
  factory $SignInDataCopyWith(
          SignInData value, $Res Function(SignInData) then) =
      _$SignInDataCopyWithImpl<$Res, SignInData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'login_id') String? username,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class _$SignInDataCopyWithImpl<$Res, $Val extends SignInData>
    implements $SignInDataCopyWith<$Res> {
  _$SignInDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInDataImplCopyWith<$Res>
    implements $SignInDataCopyWith<$Res> {
  factory _$$SignInDataImplCopyWith(
          _$SignInDataImpl value, $Res Function(_$SignInDataImpl) then) =
      __$$SignInDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'login_id') String? username,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class __$$SignInDataImplCopyWithImpl<$Res>
    extends _$SignInDataCopyWithImpl<$Res, _$SignInDataImpl>
    implements _$$SignInDataImplCopyWith<$Res> {
  __$$SignInDataImplCopyWithImpl(
      _$SignInDataImpl _value, $Res Function(_$SignInDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$SignInDataImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInDataImpl implements _SignInData {
  _$SignInDataImpl(
      {@JsonKey(name: 'login_id') this.username,
      @JsonKey(name: 'password') this.password});

  factory _$SignInDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInDataImplFromJson(json);

  @override
  @JsonKey(name: 'login_id')
  final String? username;
  @override
  @JsonKey(name: 'password')
  final String? password;

  @override
  String toString() {
    return 'SignInData(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInDataImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInDataImplCopyWith<_$SignInDataImpl> get copyWith =>
      __$$SignInDataImplCopyWithImpl<_$SignInDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInDataImplToJson(
      this,
    );
  }
}

abstract class _SignInData implements SignInData {
  factory _SignInData(
      {@JsonKey(name: 'login_id') final String? username,
      @JsonKey(name: 'password') final String? password}) = _$SignInDataImpl;

  factory _SignInData.fromJson(Map<String, dynamic> json) =
      _$SignInDataImpl.fromJson;

  @override
  @JsonKey(name: 'login_id')
  String? get username;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$SignInDataImplCopyWith<_$SignInDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
