// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthResponseImpl _$$AuthResponseImplFromJson(Map<String, dynamic> json) =>
    _$AuthResponseImpl(
      message: json['message'] as String,
      data: AuthData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthResponseImplToJson(_$AuthResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$AuthDataImpl _$$AuthDataImplFromJson(Map<String, dynamic> json) =>
    _$AuthDataImpl(
      token: json['token'] as String,
    );

Map<String, dynamic> _$$AuthDataImplToJson(_$AuthDataImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
