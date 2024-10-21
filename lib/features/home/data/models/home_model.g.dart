// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeModelImpl _$$HomeModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeModelImpl(
      user: (json['user'] as List<dynamic>?)?.map((e) => e as String).toList(),
      banners: (json['banners'] as List<dynamic>?)
          ?.map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      residents: (json['residents'] as List<dynamic>?)
          ?.map((e) => Resident.fromJson(e as Map<String, dynamic>))
          .toList(),
      work_requests: (json['work_requests'] as List<dynamic>?)
          ?.map((e) => WorkRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      events: (json['events'] as List<dynamic>?)
          ?.map((e) => Event.fromJson(e as Map<String, dynamic>))
          .toList(),
      buttons: (json['buttons'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeModelImplToJson(_$HomeModelImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'banners': instance.banners,
      'residents': instance.residents,
      'work_requests': instance.work_requests,
      'events': instance.events,
      'buttons': instance.buttons,
      'links': instance.links,
    };
