import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response_model.freezed.dart';
part 'auth_response_model.g.dart';

@freezed
class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    required String message,
    required AuthData data,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);
}

@freezed
class AuthData with _$AuthData {
  const factory AuthData({
    required String token,
  }) = _AuthData;

  factory AuthData.fromJson(Map<String, dynamic> json) => _$AuthDataFromJson(json);
}
