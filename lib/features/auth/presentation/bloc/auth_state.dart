import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rapl_club/features/auth/data/models/auth_response_model.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = InitialState;
  const factory AuthState.loading() = LoadingState;
  const factory AuthState.smsSent() = SmsSentState;
  const factory AuthState.smsVerified(AuthResponse response) = SmsVerifiedState;
  const factory AuthState.error(String message) = ErrorState;
}
