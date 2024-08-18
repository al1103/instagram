// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInDataImpl _$$SignInDataImplFromJson(Map<String, dynamic> json) =>
    _$SignInDataImpl(
      username: json['login_id'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$SignInDataImplToJson(_$SignInDataImpl instance) =>
    <String, dynamic>{
      'login_id': instance.username,
      'password': instance.password,
    };
