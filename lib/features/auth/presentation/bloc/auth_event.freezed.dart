// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  String get phone => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendSms,
    required TResult Function(String phone, String code) verifySms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? sendSms,
    TResult? Function(String phone, String code)? verifySms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendSms,
    TResult Function(String phone, String code)? verifySms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendSmsEvent value) sendSms,
    required TResult Function(VerifySmsEvent value) verifySms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendSmsEvent value)? sendSms,
    TResult? Function(VerifySmsEvent value)? verifySms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendSmsEvent value)? sendSms,
    TResult Function(VerifySmsEvent value)? verifySms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendSmsEventImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$SendSmsEventImplCopyWith(
          _$SendSmsEventImpl value, $Res Function(_$SendSmsEventImpl) then) =
      __$$SendSmsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$SendSmsEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SendSmsEventImpl>
    implements _$$SendSmsEventImplCopyWith<$Res> {
  __$$SendSmsEventImplCopyWithImpl(
      _$SendSmsEventImpl _value, $Res Function(_$SendSmsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$SendSmsEventImpl(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendSmsEventImpl implements SendSmsEvent {
  const _$SendSmsEventImpl(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'AuthEvent.sendSms(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendSmsEventImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendSmsEventImplCopyWith<_$SendSmsEventImpl> get copyWith =>
      __$$SendSmsEventImplCopyWithImpl<_$SendSmsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendSms,
    required TResult Function(String phone, String code) verifySms,
  }) {
    return sendSms(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? sendSms,
    TResult? Function(String phone, String code)? verifySms,
  }) {
    return sendSms?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendSms,
    TResult Function(String phone, String code)? verifySms,
    required TResult orElse(),
  }) {
    if (sendSms != null) {
      return sendSms(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendSmsEvent value) sendSms,
    required TResult Function(VerifySmsEvent value) verifySms,
  }) {
    return sendSms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendSmsEvent value)? sendSms,
    TResult? Function(VerifySmsEvent value)? verifySms,
  }) {
    return sendSms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendSmsEvent value)? sendSms,
    TResult Function(VerifySmsEvent value)? verifySms,
    required TResult orElse(),
  }) {
    if (sendSms != null) {
      return sendSms(this);
    }
    return orElse();
  }
}

abstract class SendSmsEvent implements AuthEvent {
  const factory SendSmsEvent(final String phone) = _$SendSmsEventImpl;

  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$SendSmsEventImplCopyWith<_$SendSmsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifySmsEventImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$VerifySmsEventImplCopyWith(_$VerifySmsEventImpl value,
          $Res Function(_$VerifySmsEventImpl) then) =
      __$$VerifySmsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone, String code});
}

/// @nodoc
class __$$VerifySmsEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifySmsEventImpl>
    implements _$$VerifySmsEventImplCopyWith<$Res> {
  __$$VerifySmsEventImplCopyWithImpl(
      _$VerifySmsEventImpl _value, $Res Function(_$VerifySmsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? code = null,
  }) {
    return _then(_$VerifySmsEventImpl(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifySmsEventImpl implements VerifySmsEvent {
  const _$VerifySmsEventImpl(this.phone, this.code);

  @override
  final String phone;
  @override
  final String code;

  @override
  String toString() {
    return 'AuthEvent.verifySms(phone: $phone, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifySmsEventImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifySmsEventImplCopyWith<_$VerifySmsEventImpl> get copyWith =>
      __$$VerifySmsEventImplCopyWithImpl<_$VerifySmsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) sendSms,
    required TResult Function(String phone, String code) verifySms,
  }) {
    return verifySms(phone, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? sendSms,
    TResult? Function(String phone, String code)? verifySms,
  }) {
    return verifySms?.call(phone, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? sendSms,
    TResult Function(String phone, String code)? verifySms,
    required TResult orElse(),
  }) {
    if (verifySms != null) {
      return verifySms(phone, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendSmsEvent value) sendSms,
    required TResult Function(VerifySmsEvent value) verifySms,
  }) {
    return verifySms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendSmsEvent value)? sendSms,
    TResult? Function(VerifySmsEvent value)? verifySms,
  }) {
    return verifySms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendSmsEvent value)? sendSms,
    TResult Function(VerifySmsEvent value)? verifySms,
    required TResult orElse(),
  }) {
    if (verifySms != null) {
      return verifySms(this);
    }
    return orElse();
  }
}

abstract class VerifySmsEvent implements AuthEvent {
  const factory VerifySmsEvent(final String phone, final String code) =
      _$VerifySmsEventImpl;

  @override
  String get phone;
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$VerifySmsEventImplCopyWith<_$VerifySmsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
