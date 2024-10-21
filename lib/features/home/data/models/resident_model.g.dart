// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resident_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResidentImpl _$$ResidentImplFromJson(Map<String, dynamic> json) =>
    _$ResidentImpl(
      avatar: json['avatar'] as String?,
      name: json['name'] as String,
      surname: json['surname'] as String,
      status: json['status'] as String,
      additional_status: json['additional_status'] as String,
      companies: Company.fromJson(json['companies'] as Map<String, dynamic>),
      competencies: (json['competencies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      mail: json['mail'] as String,
      phone: json['phone'] as String,
      chat_link: json['chat_link'] as String,
    );

Map<String, dynamic> _$$ResidentImplToJson(_$ResidentImpl instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'name': instance.name,
      'surname': instance.surname,
      'status': instance.status,
      'additional_status': instance.additional_status,
      'companies': instance.companies,
      'competencies': instance.competencies,
      'mail': instance.mail,
      'phone': instance.phone,
      'chat_link': instance.chat_link,
    };
