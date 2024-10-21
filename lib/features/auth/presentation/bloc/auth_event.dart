import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.sendSms(String phone) = SendSmsEvent;
  const factory AuthEvent.verifySms(String phone, String code) = VerifySmsEvent;
}
