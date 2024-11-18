import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:rapl_club/core/network/app_rest_client/rest_client_service.dart';
import 'package:rapl_club/features/home/data/models/home_model.dart';

class HomeRepository {
  HomeRepository({required this.restClientService}) : _storage = const FlutterSecureStorage();

  final RestClientService restClientService;
  final FlutterSecureStorage _storage;

  Future<HomeModel> getHomeData() async {
    try {
      final token = await _storage.read(key: 'auth_token');

      final response = await restClientService.get(
        '/main',
          params: {
          'Authorization' : 'Bearer $token'
        }
      );

      return HomeModel.fromJson(response.data['data']);
    } catch (e, stackTrace) {
      return Error.throwWithStackTrace(e, stackTrace);
    }
  }
}
