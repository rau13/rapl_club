// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      name: json['name'] as String,
      icon: json['icon'] as String?,
      type: json['type'] as String,
      address: json['address'] as String,
      date: json['date'] as String,
      access_levels: (json['access_levels'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'icon': instance.icon,
      'type': instance.type,
      'address': instance.address,
      'date': instance.date,
      'access_levels': instance.access_levels,
    };
