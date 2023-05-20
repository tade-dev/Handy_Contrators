import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/controller/auth_state_controller.dart';

class GetContractorsProfileScreen extends StatefulWidget {
  const GetContractorsProfileScreen({super.key});

  @override
  State<GetContractorsProfileScreen> createState() => _GetContractorsProfileScreenState();
}

  final AuthStateController _authStateController = Get.put(AuthStateController());

class _GetContractorsProfileScreenState extends State<GetContractorsProfileScreen> {

  @override
  void initState() {
    _authStateController.getProfile();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        child: const Center(
          child: SpinKitDualRing(
            color: Color(0xff1B5299)
          ),
        ),
      ),
    );
  }
}