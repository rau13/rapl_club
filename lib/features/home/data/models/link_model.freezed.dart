// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Links _$LinksFromJson(Map<String, dynamic> json) {
  return _Links.fromJson(json);
}

/// @nodoc
mixin _$Links {
  String get residents => throw _privateConstructorUsedError;
  String get work_requests => throw _privateConstructorUsedError;
  String get events => throw _privateConstructorUsedError;
  String get chat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksCopyWith<Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksCopyWith<$Res> {
  factory $LinksCopyWith(Links value, $Res Function(Links) then) =
      _$LinksCopyWithImpl<$Res, Links>;
  @useResult
  $Res call(
      {String residents, String work_requests, String events, String chat});
}

/// @nodoc
class _$LinksCopyWithImpl<$Res, $Val extends Links>
    implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residents = null,
    Object? work_requests = null,
    Object? events = null,
    Object? chat = null,
  }) {
    return _then(_value.copyWith(
      residents: null == residents
          ? _value.residents
          : residents // ignore: cast_nullable_to_non_nullable
              as String,
      work_requests: null == work_requests
          ? _value.work_requests
          : work_requests // ignore: cast_nullable_to_non_nullable
              as String,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as String,
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinksImplCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$$LinksImplCopyWith(
          _$LinksImpl value, $Res Function(_$LinksImpl) then) =
      __$$LinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String residents, String work_requests, String events, String chat});
}

/// @nodoc
class __$$LinksImplCopyWithImpl<$Res>
    extends _$LinksCopyWithImpl<$Res, _$LinksImpl>
    implements _$$LinksImplCopyWith<$Res> {
  __$$LinksImplCopyWithImpl(
      _$LinksImpl _value, $Res Function(_$LinksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? residents = null,
    Object? work_requests = null,
    Object? events = null,
    Object? chat = null,
  }) {
    return _then(_$LinksImpl(
      residents: null == residents
          ? _value.residents
          : residents // ignore: cast_nullable_to_non_nullable
              as String,
      work_requests: null == work_requests
          ? _value.work_requests
          : work_requests // ignore: cast_nullable_to_non_nullable
              as String,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as String,
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinksImpl implements _Links {
  const _$LinksImpl(
      {required this.residents,
      required this.work_requests,
      required this.events,
      required this.chat});

  factory _$LinksImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinksImplFromJson(json);

  @override
  final String residents;
  @override
  final String work_requests;
  @override
  final String events;
  @override
  final String chat;

  @override
  String toString() {
    return 'Links(residents: $residents, work_requests: $work_requests, events: $events, chat: $chat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinksImpl &&
            (identical(other.residents, residents) ||
                other.residents == residents) &&
            (identical(other.work_requests, work_requests) ||
                other.work_requests == work_requests) &&
            (identical(other.events, events) || other.events == events) &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, residents, work_requests, events, chat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinksImplCopyWith<_$LinksImpl> get copyWith =>
      __$$LinksImplCopyWithImpl<_$LinksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinksImplToJson(
      this,
    );
  }
}

abstract class _Links implements Links {
  const factory _Links(
      {required final String residents,
      required final String work_requests,
      required final String events,
      required final String chat}) = _$LinksImpl;

  factory _Links.fromJson(Map<String, dynamic> json) = _$LinksImpl.fromJson;

  @override
  String get residents;
  @override
  String get work_requests;
  @override
  String get events;
  @override
  String get chat;
  @override
  @JsonKey(ignore: true)
  _$$LinksImplCopyWith<_$LinksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
