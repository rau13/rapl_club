// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$Event {
  String get name => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  List<String> get access_levels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res, Event>;
  @useResult
  $Res call(
      {String name,
      String? icon,
      String type,
      String address,
      String date,
      List<String> access_levels});
}

/// @nodoc
class _$EventCopyWithImpl<$Res, $Val extends Event>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? icon = freezed,
    Object? type = null,
    Object? address = null,
    Object? date = null,
    Object? access_levels = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      access_levels: null == access_levels
          ? _value.access_levels
          : access_levels // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventImplCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$EventImplCopyWith(
          _$EventImpl value, $Res Function(_$EventImpl) then) =
      __$$EventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? icon,
      String type,
      String address,
      String date,
      List<String> access_levels});
}

/// @nodoc
class __$$EventImplCopyWithImpl<$Res>
    extends _$EventCopyWithImpl<$Res, _$EventImpl>
    implements _$$EventImplCopyWith<$Res> {
  __$$EventImplCopyWithImpl(
      _$EventImpl _value, $Res Function(_$EventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? icon = freezed,
    Object? type = null,
    Object? address = null,
    Object? date = null,
    Object? access_levels = null,
  }) {
    return _then(_$EventImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      access_levels: null == access_levels
          ? _value._access_levels
          : access_levels // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventImpl implements _Event {
  const _$EventImpl(
      {required this.name,
      this.icon,
      required this.type,
      required this.address,
      required this.date,
      required final List<String> access_levels})
      : _access_levels = access_levels;

  factory _$EventImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventImplFromJson(json);

  @override
  final String name;
  @override
  final String? icon;
  @override
  final String type;
  @override
  final String address;
  @override
  final String date;
  final List<String> _access_levels;
  @override
  List<String> get access_levels {
    if (_access_levels is EqualUnmodifiableListView) return _access_levels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_access_levels);
  }

  @override
  String toString() {
    return 'Event(name: $name, icon: $icon, type: $type, address: $address, date: $date, access_levels: $access_levels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._access_levels, _access_levels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, icon, type, address, date,
      const DeepCollectionEquality().hash(_access_levels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      __$$EventImplCopyWithImpl<_$EventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventImplToJson(
      this,
    );
  }
}

abstract class _Event implements Event {
  const factory _Event(
      {required final String name,
      final String? icon,
      required final String type,
      required final String address,
      required final String date,
      required final List<String> access_levels}) = _$EventImpl;

  factory _Event.fromJson(Map<String, dynamic> json) = _$EventImpl.fromJson;

  @override
  String get name;
  @override
  String? get icon;
  @override
  String get type;
  @override
  String get address;
  @override
  String get date;
  @override
  List<String> get access_levels;
  @override
  @JsonKey(ignore: true)
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
