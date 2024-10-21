// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resident_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Resident _$ResidentFromJson(Map<String, dynamic> json) {
  return _Resident.fromJson(json);
}

/// @nodoc
mixin _$Resident {
  String? get avatar => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get additional_status => throw _privateConstructorUsedError;
  Company get companies => throw _privateConstructorUsedError;
  List<String> get competencies => throw _privateConstructorUsedError;
  String get mail => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get chat_link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResidentCopyWith<Resident> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResidentCopyWith<$Res> {
  factory $ResidentCopyWith(Resident value, $Res Function(Resident) then) =
      _$ResidentCopyWithImpl<$Res, Resident>;
  @useResult
  $Res call(
      {String? avatar,
      String name,
      String surname,
      String status,
      String additional_status,
      Company companies,
      List<String> competencies,
      String mail,
      String phone,
      String chat_link});

  $CompanyCopyWith<$Res> get companies;
}

/// @nodoc
class _$ResidentCopyWithImpl<$Res, $Val extends Resident>
    implements $ResidentCopyWith<$Res> {
  _$ResidentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? name = null,
    Object? surname = null,
    Object? status = null,
    Object? additional_status = null,
    Object? companies = null,
    Object? competencies = null,
    Object? mail = null,
    Object? phone = null,
    Object? chat_link = null,
  }) {
    return _then(_value.copyWith(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      additional_status: null == additional_status
          ? _value.additional_status
          : additional_status // ignore: cast_nullable_to_non_nullable
              as String,
      companies: null == companies
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as Company,
      competencies: null == competencies
          ? _value.competencies
          : competencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mail: null == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      chat_link: null == chat_link
          ? _value.chat_link
          : chat_link // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<$Res> get companies {
    return $CompanyCopyWith<$Res>(_value.companies, (value) {
      return _then(_value.copyWith(companies: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResidentImplCopyWith<$Res>
    implements $ResidentCopyWith<$Res> {
  factory _$$ResidentImplCopyWith(
          _$ResidentImpl value, $Res Function(_$ResidentImpl) then) =
      __$$ResidentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? avatar,
      String name,
      String surname,
      String status,
      String additional_status,
      Company companies,
      List<String> competencies,
      String mail,
      String phone,
      String chat_link});

  @override
  $CompanyCopyWith<$Res> get companies;
}

/// @nodoc
class __$$ResidentImplCopyWithImpl<$Res>
    extends _$ResidentCopyWithImpl<$Res, _$ResidentImpl>
    implements _$$ResidentImplCopyWith<$Res> {
  __$$ResidentImplCopyWithImpl(
      _$ResidentImpl _value, $Res Function(_$ResidentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? name = null,
    Object? surname = null,
    Object? status = null,
    Object? additional_status = null,
    Object? companies = null,
    Object? competencies = null,
    Object? mail = null,
    Object? phone = null,
    Object? chat_link = null,
  }) {
    return _then(_$ResidentImpl(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      additional_status: null == additional_status
          ? _value.additional_status
          : additional_status // ignore: cast_nullable_to_non_nullable
              as String,
      companies: null == companies
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as Company,
      competencies: null == competencies
          ? _value._competencies
          : competencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mail: null == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      chat_link: null == chat_link
          ? _value.chat_link
          : chat_link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResidentImpl implements _Resident {
  const _$ResidentImpl(
      {this.avatar,
      required this.name,
      required this.surname,
      required this.status,
      required this.additional_status,
      required this.companies,
      required final List<String> competencies,
      required this.mail,
      required this.phone,
      required this.chat_link})
      : _competencies = competencies;

  factory _$ResidentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResidentImplFromJson(json);

  @override
  final String? avatar;
  @override
  final String name;
  @override
  final String surname;
  @override
  final String status;
  @override
  final String additional_status;
  @override
  final Company companies;
  final List<String> _competencies;
  @override
  List<String> get competencies {
    if (_competencies is EqualUnmodifiableListView) return _competencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_competencies);
  }

  @override
  final String mail;
  @override
  final String phone;
  @override
  final String chat_link;

  @override
  String toString() {
    return 'Resident(avatar: $avatar, name: $name, surname: $surname, status: $status, additional_status: $additional_status, companies: $companies, competencies: $competencies, mail: $mail, phone: $phone, chat_link: $chat_link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResidentImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.additional_status, additional_status) ||
                other.additional_status == additional_status) &&
            (identical(other.companies, companies) ||
                other.companies == companies) &&
            const DeepCollectionEquality()
                .equals(other._competencies, _competencies) &&
            (identical(other.mail, mail) || other.mail == mail) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.chat_link, chat_link) ||
                other.chat_link == chat_link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      avatar,
      name,
      surname,
      status,
      additional_status,
      companies,
      const DeepCollectionEquality().hash(_competencies),
      mail,
      phone,
      chat_link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResidentImplCopyWith<_$ResidentImpl> get copyWith =>
      __$$ResidentImplCopyWithImpl<_$ResidentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResidentImplToJson(
      this,
    );
  }
}

abstract class _Resident implements Resident {
  const factory _Resident(
      {final String? avatar,
      required final String name,
      required final String surname,
      required final String status,
      required final String additional_status,
      required final Company companies,
      required final List<String> competencies,
      required final String mail,
      required final String phone,
      required final String chat_link}) = _$ResidentImpl;

  factory _Resident.fromJson(Map<String, dynamic> json) =
      _$ResidentImpl.fromJson;

  @override
  String? get avatar;
  @override
  String get name;
  @override
  String get surname;
  @override
  String get status;
  @override
  String get additional_status;
  @override
  Company get companies;
  @override
  List<String> get competencies;
  @override
  String get mail;
  @override
  String get phone;
  @override
  String get chat_link;
  @override
  @JsonKey(ignore: true)
  _$$ResidentImplCopyWith<_$ResidentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
