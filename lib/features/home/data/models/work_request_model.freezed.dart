// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkRequest _$WorkRequestFromJson(Map<String, dynamic> json) {
  return _WorkRequest.fromJson(json);
}

/// @nodoc
mixin _$WorkRequest {
  String? get avatar => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkRequestCopyWith<WorkRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkRequestCopyWith<$Res> {
  factory $WorkRequestCopyWith(
          WorkRequest value, $Res Function(WorkRequest) then) =
      _$WorkRequestCopyWithImpl<$Res, WorkRequest>;
  @useResult
  $Res call(
      {String? avatar,
      String name,
      String surname,
      String status,
      String title,
      String description,
      String city,
      String date});
}

/// @nodoc
class _$WorkRequestCopyWithImpl<$Res, $Val extends WorkRequest>
    implements $WorkRequestCopyWith<$Res> {
  _$WorkRequestCopyWithImpl(this._value, this._then);

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
    Object? title = null,
    Object? description = null,
    Object? city = null,
    Object? date = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkRequestImplCopyWith<$Res>
    implements $WorkRequestCopyWith<$Res> {
  factory _$$WorkRequestImplCopyWith(
          _$WorkRequestImpl value, $Res Function(_$WorkRequestImpl) then) =
      __$$WorkRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? avatar,
      String name,
      String surname,
      String status,
      String title,
      String description,
      String city,
      String date});
}

/// @nodoc
class __$$WorkRequestImplCopyWithImpl<$Res>
    extends _$WorkRequestCopyWithImpl<$Res, _$WorkRequestImpl>
    implements _$$WorkRequestImplCopyWith<$Res> {
  __$$WorkRequestImplCopyWithImpl(
      _$WorkRequestImpl _value, $Res Function(_$WorkRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? name = null,
    Object? surname = null,
    Object? status = null,
    Object? title = null,
    Object? description = null,
    Object? city = null,
    Object? date = null,
  }) {
    return _then(_$WorkRequestImpl(
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkRequestImpl implements _WorkRequest {
  const _$WorkRequestImpl(
      {this.avatar,
      required this.name,
      required this.surname,
      required this.status,
      required this.title,
      required this.description,
      required this.city,
      required this.date});

  factory _$WorkRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkRequestImplFromJson(json);

  @override
  final String? avatar;
  @override
  final String name;
  @override
  final String surname;
  @override
  final String status;
  @override
  final String title;
  @override
  final String description;
  @override
  final String city;
  @override
  final String date;

  @override
  String toString() {
    return 'WorkRequest(avatar: $avatar, name: $name, surname: $surname, status: $status, title: $title, description: $description, city: $city, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkRequestImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, avatar, name, surname, status,
      title, description, city, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkRequestImplCopyWith<_$WorkRequestImpl> get copyWith =>
      __$$WorkRequestImplCopyWithImpl<_$WorkRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkRequestImplToJson(
      this,
    );
  }
}

abstract class _WorkRequest implements WorkRequest {
  const factory _WorkRequest(
      {final String? avatar,
      required final String name,
      required final String surname,
      required final String status,
      required final String title,
      required final String description,
      required final String city,
      required final String date}) = _$WorkRequestImpl;

  factory _WorkRequest.fromJson(Map<String, dynamic> json) =
      _$WorkRequestImpl.fromJson;

  @override
  String? get avatar;
  @override
  String get name;
  @override
  String get surname;
  @override
  String get status;
  @override
  String get title;
  @override
  String get description;
  @override
  String get city;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$WorkRequestImplCopyWith<_$WorkRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
