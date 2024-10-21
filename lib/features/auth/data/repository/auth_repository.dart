import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:rapl_club/core/constants/api_constants.dart';
import 'package:rapl_club/core/network/app_rest_client/rest_client_service.dart';
import 'package:rapl_club/features/auth/data/models/auth_response_model.dart';

class AuthRepository {

  AuthRepository({required this.restClientService}) : _storage = const FlutterSecureStorage();

  RestClientService restClientService;

  final FlutterSecureStorage _storage;

  Future<bool> sendSms(String phone) async {
    try {
      final response = await restClientService.post(
          '/auth/send-sms',
          body: {
            "phone": phone,
          }
      );
      return response.statusCode == 400;
    } catch (e, stackTrace) {
      return Error.throwWithStackTrace(e, stackTrace);
    }
  }

  Future<AuthResponse> verifySms(String phone, String code) async {
    try{
      final response = await restClientService.post(
        '/auth/verify-sms',
        body: {
          "phone": phone,
          "code": code
        }
      );
      // Assuming the response contains a token field
      final authResponse = AuthResponse.fromJson(response.data);

      // Save the token to secure storage
      await _storage.write(key: 'auth_token', value: authResponse.data.token);

      return authResponse;
    } catch (e, stackTrace) {
      return Error.throwWithStackTrace(e, stackTrace);
    }
  }

}