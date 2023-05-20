import 'package:dio/dio.dart';

import '../routes/api_routes_names.dart';


class PingApiService {
  static Future<Response?> pingServerService() async{
    try {
      String fullUrl = "$baseUrl/api/v1/user";
      print("FULLURL:$fullUrl");

      var response = await Dio().get(
        fullUrl,
      );
      return response;

    } on DioError catch (error) {
      if(error.response != null){
        return error.response;
      }
      throw Exception(error.response);
    }
  }
}