import 'package:dio/dio.dart';

class DioClient {
  final client = Dio();

  Future<List<dynamic>> get({required String url}) async {
    var response = await client.get(url);
    return response.data;
  }
}
