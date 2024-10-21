// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() smsSent,
    required TResult Function(AuthResponse response) smsVerified,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? smsSent,
    TResult? Function(AuthResponse response)? smsVerified,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? smsSent,
    TResult Function(AuthResponse response)? smsVerified,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SmsSentState value) smsSent,
    required TResult Function(SmsVerifiedState value) smsVerified,
    required TResult Function(ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SmsSentState value)? smsSent,
    TResult? Function(SmsVerifiedState value)? smsVerified,
    TResult? Function(ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SmsSentState value)? smsSent,
    TResult Function(SmsVerifiedState value)? smsVerified,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStateImpl implements InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() smsSent,
    required TResult Function(AuthResponse response) smsVerified,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? smsSent,
    TResult? Function(AuthResponse response)? smsVerified,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? smsSent,
    TResult Function(AuthResponse response)? smsVerified,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SmsSentState value) smsSent,
    required TResult Function(SmsVerifiedState value) smsVerified,
    required TResult Function(ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SmsSentState value)? smsSent,
    TResult? Function(SmsVerifiedState value)? smsVerified,
    TResult? Function(ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SmsSentState value)? smsSent,
    TResult Function(SmsVerifiedState value)? smsVerified,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements AuthState {
  const factory InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() smsSent,
    required TResult Function(AuthResponse response) smsVerified,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? smsSent,
    TResult? Function(AuthResponse response)? smsVerified,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? smsSent,
    TResult Function(AuthResponse response)? smsVerified,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SmsSentState value) smsSent,
    required TResult Function(SmsVerifiedState value) smsVerified,
    required TResult Function(ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SmsSentState value)? smsSent,
    TResult? Function(SmsVerifiedState value)? smsVerified,
    TResult? Function(ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SmsSentState value)? smsSent,
    TResult Function(SmsVerifiedState value)? smsVerified,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements AuthState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SmsSentStateImplCopyWith<$Res> {
  factory _$$SmsSentStateImplCopyWith(
          _$SmsSentStateImpl value, $Res Function(_$SmsSentStateImpl) then) =
      __$$SmsSentStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SmsSentStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SmsSentStateImpl>
    implements _$$SmsSentStateImplCopyWith<$Res> {
  __$$SmsSentStateImplCopyWithImpl(
      _$SmsSentStateImpl _value, $Res Function(_$SmsSentStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SmsSentStateImpl implements SmsSentState {
  const _$SmsSentStateImpl();

  @override
  String toString() {
    return 'AuthState.smsSent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SmsSentStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() smsSent,
    required TResult Function(AuthResponse response) smsVerified,
    required TResult Function(String message) error,
  }) {
    return smsSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? smsSent,
    TResult? Function(AuthResponse response)? smsVerified,
    TResult? Function(String message)? error,
  }) {
    return smsSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? smsSent,
    TResult Function(AuthResponse response)? smsVerified,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (smsSent != null) {
      return smsSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SmsSentState value) smsSent,
    required TResult Function(SmsVerifiedState value) smsVerified,
    required TResult Function(ErrorState value) error,
  }) {
    return smsSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SmsSentState value)? smsSent,
    TResult? Function(SmsVerifiedState value)? smsVerified,
    TResult? Function(ErrorState value)? error,
  }) {
    return smsSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SmsSentState value)? smsSent,
    TResult Function(SmsVerifiedState value)? smsVerified,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (smsSent != null) {
      return smsSent(this);
    }
    return orElse();
  }
}

abstract class SmsSentState implements AuthState {
  const factory SmsSentState() = _$SmsSentStateImpl;
}

/// @nodoc
abstract class _$$SmsVerifiedStateImplCopyWith<$Res> {
  factory _$$SmsVerifiedStateImplCopyWith(_$SmsVerifiedStateImpl value,
          $Res Function(_$SmsVerifiedStateImpl) then) =
      __$$SmsVerifiedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthResponse response});

  $AuthResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$SmsVerifiedStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SmsVerifiedStateImpl>
    implements _$$SmsVerifiedStateImplCopyWith<$Res> {
  __$$SmsVerifiedStateImplCopyWithImpl(_$SmsVerifiedStateImpl _value,
      $Res Function(_$SmsVerifiedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$SmsVerifiedStateImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as AuthResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthResponseCopyWith<$Res> get response {
    return $AuthResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$SmsVerifiedStateImpl implements SmsVerifiedState {
  const _$SmsVerifiedStateImpl(this.response);

  @override
  final AuthResponse response;

  @override
  String toString() {
    return 'AuthState.smsVerified(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmsVerifiedStateImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SmsVerifiedStateImplCopyWith<_$SmsVerifiedStateImpl> get copyWith =>
      __$$SmsVerifiedStateImplCopyWithImpl<_$SmsVerifiedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() smsSent,
    required TResult Function(AuthResponse response) smsVerified,
    required TResult Function(String message) error,
  }) {
    return smsVerified(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? smsSent,
    TResult? Function(AuthResponse response)? smsVerified,
    TResult? Function(String message)? error,
  }) {
    return smsVerified?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? smsSent,
    TResult Function(AuthResponse response)? smsVerified,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (smsVerified != null) {
      return smsVerified(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SmsSentState value) smsSent,
    required TResult Function(SmsVerifiedState value) smsVerified,
    required TResult Function(ErrorState value) error,
  }) {
    return smsVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SmsSentState value)? smsSent,
    TResult? Function(SmsVerifiedState value)? smsVerified,
    TResult? Function(ErrorState value)? error,
  }) {
    return smsVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SmsSentState value)? smsSent,
    TResult Function(SmsVerifiedState value)? smsVerified,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (smsVerified != null) {
      return smsVerified(this);
    }
    return orElse();
  }
}

abstract class SmsVerifiedState implements AuthState {
  const factory SmsVerifiedState(final AuthResponse response) =
      _$SmsVerifiedStateImpl;

  AuthResponse get response;
  @JsonKey(ignore: true)
  _$$SmsVerifiedStateImplCopyWith<_$SmsVerifiedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements ErrorState {
  const _$ErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() smsSent,
    required TResult Function(AuthResponse response) smsVerified,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? smsSent,
    TResult? Function(AuthResponse response)? smsVerified,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? smsSent,
    TResult Function(AuthResponse response)? smsVerified,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SmsSentState value) smsSent,
    required TResult Function(SmsVerifiedState value) smsVerified,
    required TResult Function(ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SmsSentState value)? smsSent,
    TResult? Function(SmsVerifiedState value)? smsVerified,
    TResult? Function(ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SmsSentState value)? smsSent,
    TResult Function(SmsVerifiedState value)? smsVerified,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements AuthState {
  const factory ErrorState(final String message) = _$ErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
