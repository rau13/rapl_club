// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeModel {
  List<UserModel>? get user => throw _privateConstructorUsedError;
  List<BannerModel>? get banners => throw _privateConstructorUsedError;
  List<Resident>? get residents => throw _privateConstructorUsedError;
  List<WorkRequest>? get work_requests => throw _privateConstructorUsedError;
  List<Event>? get events => throw _privateConstructorUsedError;
  List<List<String>>? get buttons => throw _privateConstructorUsedError;
  Links? get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call(
      {List<UserModel>? user,
      List<BannerModel>? banners,
      List<Resident>? residents,
      List<WorkRequest>? work_requests,
      List<Event>? events,
      List<List<String>>? buttons,
      Links? links});

  $LinksCopyWith<$Res>? get links;
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? banners = freezed,
    Object? residents = freezed,
    Object? work_requests = freezed,
    Object? events = freezed,
    Object? buttons = freezed,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      banners: freezed == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>?,
      residents: freezed == residents
          ? _value.residents
          : residents // ignore: cast_nullable_to_non_nullable
              as List<Resident>?,
      work_requests: freezed == work_requests
          ? _value.work_requests
          : work_requests // ignore: cast_nullable_to_non_nullable
              as List<WorkRequest>?,
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>?,
      buttons: freezed == buttons
          ? _value.buttons
          : buttons // ignore: cast_nullable_to_non_nullable
              as List<List<String>>?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $LinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeModelImplCopyWith<$Res>
    implements $HomeModelCopyWith<$Res> {
  factory _$$HomeModelImplCopyWith(
          _$HomeModelImpl value, $Res Function(_$HomeModelImpl) then) =
      __$$HomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserModel>? user,
      List<BannerModel>? banners,
      List<Resident>? residents,
      List<WorkRequest>? work_requests,
      List<Event>? events,
      List<List<String>>? buttons,
      Links? links});

  @override
  $LinksCopyWith<$Res>? get links;
}

/// @nodoc
class __$$HomeModelImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelImpl>
    implements _$$HomeModelImplCopyWith<$Res> {
  __$$HomeModelImplCopyWithImpl(
      _$HomeModelImpl _value, $Res Function(_$HomeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? banners = freezed,
    Object? residents = freezed,
    Object? work_requests = freezed,
    Object? events = freezed,
    Object? buttons = freezed,
    Object? links = freezed,
  }) {
    return _then(_$HomeModelImpl(
      user: freezed == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      banners: freezed == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>?,
      residents: freezed == residents
          ? _value._residents
          : residents // ignore: cast_nullable_to_non_nullable
              as List<Resident>?,
      work_requests: freezed == work_requests
          ? _value._work_requests
          : work_requests // ignore: cast_nullable_to_non_nullable
              as List<WorkRequest>?,
      events: freezed == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>?,
      buttons: freezed == buttons
          ? _value._buttons
          : buttons // ignore: cast_nullable_to_non_nullable
              as List<List<String>>?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeModelImpl implements _HomeModel {
  const _$HomeModelImpl(
      {required final List<UserModel>? user,
      required final List<BannerModel>? banners,
      required final List<Resident>? residents,
      required final List<WorkRequest>? work_requests,
      required final List<Event>? events,
      required final List<List<String>>? buttons,
      required this.links})
      : _user = user,
        _banners = banners,
        _residents = residents,
        _work_requests = work_requests,
        _events = events,
        _buttons = buttons;

  factory _$HomeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeModelImplFromJson(json);

  final List<UserModel>? _user;
  @override
  List<UserModel>? get user {
    final value = _user;
    if (value == null) return null;
    if (_user is EqualUnmodifiableListView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BannerModel>? _banners;
  @override
  List<BannerModel>? get banners {
    final value = _banners;
    if (value == null) return null;
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Resident>? _residents;
  @override
  List<Resident>? get residents {
    final value = _residents;
    if (value == null) return null;
    if (_residents is EqualUnmodifiableListView) return _residents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WorkRequest>? _work_requests;
  @override
  List<WorkRequest>? get work_requests {
    final value = _work_requests;
    if (value == null) return null;
    if (_work_requests is EqualUnmodifiableListView) return _work_requests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Event>? _events;
  @override
  List<Event>? get events {
    final value = _events;
    if (value == null) return null;
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<List<String>>? _buttons;
  @override
  List<List<String>>? get buttons {
    final value = _buttons;
    if (value == null) return null;
    if (_buttons is EqualUnmodifiableListView) return _buttons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Links? links;

  @override
  String toString() {
    return 'HomeModel(user: $user, banners: $banners, residents: $residents, work_requests: $work_requests, events: $events, buttons: $buttons, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelImpl &&
            const DeepCollectionEquality().equals(other._user, _user) &&
            const DeepCollectionEquality().equals(other._banners, _banners) &&
            const DeepCollectionEquality()
                .equals(other._residents, _residents) &&
            const DeepCollectionEquality()
                .equals(other._work_requests, _work_requests) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality().equals(other._buttons, _buttons) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_user),
      const DeepCollectionEquality().hash(_banners),
      const DeepCollectionEquality().hash(_residents),
      const DeepCollectionEquality().hash(_work_requests),
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(_buttons),
      links);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      __$$HomeModelImplCopyWithImpl<_$HomeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeModelImplToJson(
      this,
    );
  }
}

abstract class _HomeModel implements HomeModel {
  const factory _HomeModel(
      {required final List<UserModel>? user,
      required final List<BannerModel>? banners,
      required final List<Resident>? residents,
      required final List<WorkRequest>? work_requests,
      required final List<Event>? events,
      required final List<List<String>>? buttons,
      required final Links? links}) = _$HomeModelImpl;

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$HomeModelImpl.fromJson;

  @override
  List<UserModel>? get user;
  @override
  List<BannerModel>? get banners;
  @override
  List<Resident>? get residents;
  @override
  List<WorkRequest>? get work_requests;
  @override
  List<Event>? get events;
  @override
  List<List<String>>? get buttons;
  @override
  Links? get links;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
