// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkRequestImpl _$$WorkRequestImplFromJson(Map<String, dynamic> json) =>
    _$WorkRequestImpl(
      avatar: json['avatar'] as String?,
      name: json['name'] as String,
      surname: json['surname'] as String,
      status: json['status'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      city: json['city'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$$WorkRequestImplToJson(_$WorkRequestImpl instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'name': instance.name,
      'surname': instance.surname,
      'status': instance.status,
      'title': instance.title,
      'description': instance.description,
      'city': instance.city,
      'date': instance.date,
    };
