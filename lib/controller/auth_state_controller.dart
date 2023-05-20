import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/services/ping_service.dart';
import 'package:handy_contractors/services/user_api_services.dart';

import '../routes/app_route_names.dart';
import '../screens/WorkersScreens/dojahKycWorkers.dart';
import '../services/auth_api_services.dart';
import '../storage/secureStorage.dart';

class AuthStateController extends GetxController{
  // INSTANT VARIABLES
  String _fullname = "";
  String _email = "";
  String _password = "";
  String _selectedUserType = "";
  dynamic _phoneNumber = "";
  bool _hidePassword = true;
  int _radioValue = 1;
  bool _isLoading = false;
  dynamic _otpCode = 0;
  final List<String> _userTypes = [
    "Worker",
    "Contractor",
  ];
  TextEditingController _emailController = TextEditingController();

  // GETTERS
  String get fullname => _fullname;
  String get email => _email;
  String get password => _password;
  String get selectedUserType => _selectedUserType;
  dynamic get phoneNumber => _phoneNumber;
  bool get hidePassword => _hidePassword;
  int get radioValue => _radioValue;
  bool get isLoading => _isLoading;
  dynamic get otpCode => _otpCode;
  List get userTypes => _userTypes;
  TextEditingController get emailController => _emailController;

  // SETTERS
  updateFullname(value) {
    _fullname = value;
    update();
  }
  updateEmail(value) {
    _email = value;
    update();
  }
  updatePassword(value) {
    _password = value;
    update();
  }  
  updatePhoneNumber(value) {
    _phoneNumber = value;
    update();
  }
  updateOtpCode(value) {
    _otpCode = value;
    update();
  }
  toggleHidePassword() {
    _hidePassword = !_hidePassword;
    update();
  }
  updateRadioState(value) {
    _radioValue = value;
    update();
  }
  updateIsLoading(value) {
    _isLoading = value;
    update();
  }
  updateUserType(value) {
    _selectedUserType = value;
    update();
  }
  updateEmailController(value) {
    _emailController = value;
    update();
  }

  Future<void> signUpUser() async{
    updateIsLoading(true);

    Map<String, dynamic> _details = {
      "fullName": _fullname,
      "email": _email,
      "password": _password,
      "phoneumber": _phoneNumber
    };
    print(_details);

    var response = await AuthApiServices.registerUserService(_details);
    var responseData = response!.data;
    print(responseData);

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);

      await LocalStorage().storeUserId(responseData['data']["user"]["_id"]);

      Fluttertoast.showToast(
        msg: "Registered Successfully!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );
      Get.offAllNamed(emailVerificationScreen);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Failed!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }

    update();
  } 

  Future<void> loginUser(BuildContext context   ) async{
    updateIsLoading(true);

    Map<String, dynamic> _details = {
      "email": _email,
      "password": _password,
    };
    print(_details);

    var response = await AuthApiServices.loginUserService(_details);
    var responseData = response!.data;
    print(responseData);

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Logged In Successfully!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );
      // KycVerification.kycVerification(context);
      Get.offAllNamed(holderScreen);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Failed!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }

    update();
  } 

  Future<void> forgotPassword() async{
    updateIsLoading(true);

    Map<String, dynamic> _details = {
      "email": _email,
    };
    print(_details);

    var response = await AuthApiServices.forgotPasswordService(_details);
    var responseData = response!.data;
    print(responseData);

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Email Sent Successfully!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );
      Get.offAllNamed(forgotPasswordVerificationScreen);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Failed!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }

    update();
  } 

  Future<void> resetPassword() async{
    updateIsLoading(true);

    Map<String, dynamic> _details = {
      "otpCode": _otpCode,
    };
    print(_details);

    var response = await AuthApiServices.resetPasswordService(_details);
    var responseData = response!.data;
    print(responseData);

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Verified Successfully!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );
      // Get.offAllNamed(lawyerprofileAvailabilityScreen);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Failed!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }

    update();
  } 

  Future<void> verifyEmail() async{
    updateIsLoading(true);

    Map<String, dynamic> _details = {
      "otpCode": _otpCode,
    };
    print(_details);

    var response = await AuthApiServices.verifyEmailService(_details);
    var responseData = response!.data;
    print(responseData);

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Otp Verified Successfully!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );
      Get.offAllNamed(userTypeScreen);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Failed!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }

    update();
  } 

  Future<void> resendVerification() async{
    updateIsLoading(true);

    Map<String, dynamic> _details = {
      "email": _email,
    };
    print(_details);

    var response = await AuthApiServices.resendVerificationService(_details);
    var responseData = response!.data;
    print(responseData);

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Sent Again Successfully!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );
      Get.offAllNamed(userTypeScreen);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Failed!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }

    update();
  } 

  Future<void> getAllUserProfile() async{
    updateIsLoading(true);

    var response = await UserApiServices.getAllUsersService();
    var responseData = response!.data;
    print(responseData);

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Retrieved Successfully!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );
      Get.offAllNamed(userTypeScreen);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Failed!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }

    update();
  } 

  Future<void> setProfile() async{
    updateIsLoading(true);

    Map<String, dynamic> _details = {
      "userType": _selectedUserType,
      "interest": ""
    };

    var response = await UserApiServices.setProfileService(_details);
    var responseData = response!.data;
    print(responseData);

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Set Successfully!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );

      // Get.offAllNamed(la);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Failed!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }

    update();
  } 

  Future<void> getProfile() async{
    updateIsLoading(true);

    var response = await UserApiServices.getProfileService();
    var responseData = response!.data;
    print(responseData);

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Retrieved Successfully!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );

      // updateEmailController(responseData[])

      Get.toNamed(holderScreen);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Failed!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }

    update();
  } 

  Future<void> deleteProfile() async{
    updateIsLoading(true);

    var response = await UserApiServices.deleteProfileService();
    var responseData = response!.data;
    print(responseData);

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Deleted Successfully!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );

      // Get.offAllNamed(la);

    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Failed!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }

    update();
  } 
  
  Future<void> pingServer() async{
    updateIsLoading(true);


    var response = await PingApiService.pingServerService();
    var responseData = response!.data;
    print(responseData);

    bool isSuccess = responseData["success"];
    if(isSuccess){
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Welcome!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
      );


    } else {
      updateIsLoading(false);
      Fluttertoast.showToast(
        msg: "Failed!!!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
    }

    update();
  } 
}