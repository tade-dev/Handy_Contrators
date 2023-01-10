import 'package:get/get.dart';

class AuthStateController extends GetxController{
  // INSTANT VARIABLES
  String _fullname = "";
  String _email = "";
  String _password = "";
  String _phoneNumber = "";

  bool _hidePassword = true;
  int _radioValue = 1;



  // GETTERS
  String get fullname => _fullname;
  String get email => _email;
  String get password => _password;
  String get phoneNumber => _phoneNumber;

  bool get hidePassword => _hidePassword;
  int get radioValue => _radioValue;



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
  toggleHidePassword() {
    _hidePassword = !_hidePassword;
    update();
  }
  updateRadioState(value) {
    _radioValue = value;
    update();
  }


}