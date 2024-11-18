// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      avatar: json['avatar'] as String?,
      name: json['name'] as String,
      surname: json['surname'] as String,
      phone: json['phone'] as String,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'name': instance.name,
      'surname': instance.surname,
      'phone': instance.phone,
      'icon': instance.icon,
    };
