import 'package:dio/dio.dart';

class ApiProvider {
  static Dio dio = new Dio();

  /// Generical GET Method
  static Future<List<dynamic>> getSomeData(String url) async {
    var response;
    try {
      response = await dio.get(url);
    } on Error {
      response = {'status': "Something its wrong"};
    }

    return response.data;
  }
}