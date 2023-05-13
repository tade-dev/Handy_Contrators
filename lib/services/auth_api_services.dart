import 'package:dio/dio.dart';

import '../routes/api_routes_names.dart';

class AuthApiServices {

  // REGISTER USER SERVICE
  static Future<Response?> registerUserService(Map<String, dynamic> registerDetails) async{
    try {
      String fullUrl = "$baseUrl$signUpRoute";
      print("FULLURL:$fullUrl");
      print("REGISTERDETAILS:$registerDetails");

      var response = await Dio().post(
        fullUrl,
        data: registerDetails
      );
      return response;

    } on DioError catch (error) {
      if(error.response != null){
        return error.response;
      }
      throw Exception(error.response);
    }
  }

  // LOGIN USER SERVICE
  static Future<Response?> loginUserService(Map<String, dynamic> loginDetails) async{
    try {
      String fullUrl = "$baseUrl$loginRoute";
      print("FULLURL:$fullUrl");
      print("LOGINDETAILS:$loginDetails");

      var response = await Dio().post(
        fullUrl,
        data: loginDetails
      );
      return response;

    } on DioError catch (error) {
      if(error.response != null){
        return error.response;
      }
      throw Exception(error.response);
    }
  }

  // LOGOUT USER SERVICE
  static Future<Response?> logoutUserService() async{
    try {
      String fullUrl = "";
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

  // RESEND REG OTP SERVICE
  static Future<Response?> resendVerificationService(Map<String, dynamic> resendDetails) async{
    try {
      String fullUrl = "$baseUrl$resendVerificationRoute";
      print("FULLURL:$fullUrl");

      var response = await Dio().post(
        fullUrl,
        data: resendDetails
      );
      return response;

    } on DioError catch (error) {
      if(error.response != null){
        return error.response;
      }
      throw Exception(error.response);
    }
  }

  // FORGOT PASSWORD SERVICE
  static Future<Response?> forgotPasswordService(Map<String, dynamic> forgotPasswordDetails) async{
    try {
      String fullUrl = "$baseUrl$forgotPasswordRoute";
      print("FULLURL:$fullUrl");

      var response = await Dio().post(
        fullUrl,
        data: forgotPasswordDetails
      );
      return response;

    } on DioError catch (error) {
      if(error.response != null){
        return error.response;
      }
      throw Exception(error.response);
    }
  }

  // RESET PASSWORD SERVICE
  static Future<Response?> resetPasswordService(Map<String, dynamic> resetPasswordDetails) async{
    try {
      String fullUrl = "$baseUrl$resetPasswordRoute";
      print("FULLURL:$fullUrl");

      var response = await Dio().post(
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

  // VERIFY OTP (REGISTRATION) SERVICE
  static Future<Response?> verifyEmailService(Map<String, dynamic> verifyRegOtpDetails) async{
    try {
      String fullUrl = "$baseUrl$verifyEmailRoute";
      print("FULLURL:$fullUrl");

      var response = await Dio().post(
        fullUrl,
        data: verifyRegOtpDetails
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