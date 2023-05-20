import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/controller/auth_state_controller.dart';

import '../../routes/app_route_names.dart';
import '../../storage/secureStorage.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  final AuthStateController _authStateController = Get.put(AuthStateController());


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  check() async{
    String id = await LocalStorage().fetchUserId();

    if(id != ""){
      Get.offAllNamed(loginScreen);
    } else {
      Get.offAllNamed(onboardingScreen);
    }
  }
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      (){
        check();
      }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: const Color(0xff1B5299),
        child: const Center(
          child: Text(
            "WORK BLUE",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}