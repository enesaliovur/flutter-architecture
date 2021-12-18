import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:week4/core/exception/env_not_found.dart';

class NetworkManager {
  static NetworkManager? _instance;
  final String _baseUrl = 'BASE_URL';
  late final Dio dio;
  static NetworkManager get instance {
    if (_instance != null) {
      return _instance!;
    } else {
      _instance = NetworkManager._init();
      return _instance!;
    }
  }

  NetworkManager._init() {
    final url = dotenv.env[_baseUrl];
    if (url != null) {
      dio = Dio(BaseOptions(baseUrl: url));
    } else {
      throw EnvNotFound(value: _baseUrl);
    }
  }
}
