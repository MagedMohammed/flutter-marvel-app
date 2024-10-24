import 'package:dio/dio.dart';
import 'package:marvelapp_project/constants/strings.dart';
import '../Models/CharactersModel.dart';

class WebServices {
  late Dio dio;
  final queryParameters = {"apikey": apiKey, "ts": ts, "hash": hash};

  WebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: servicesLink,
      receiveDataWhenStatusError: true,
      queryParameters: queryParameters,
      receiveTimeout: Duration(seconds: 20),
      connectTimeout: Duration(seconds: 20),
    );
    dio = Dio(options);
  }

  Future<dynamic> getCharacters({required String endpoint}) async {
    try {
      final response = await dio.get(endpoint);
      if (response.statusCode == 200) {
        return response.data;
        print("data from DataSource");
      } else {
        // Handle unexpected status codes
        throw Exception('Failed to load characters');
      }
    } catch (e) {
      print(e.toString());
      throw Exception('Failed to fetch characters');
    }
  }
}
