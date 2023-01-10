import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/controller/auth_state_controller.dart';
import 'package:handy_contractors/routes/app_route_names.dart';
import 'package:iconsax/iconsax.dart';

class UserTypeScreen extends StatelessWidget {
  UserTypeScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthStateController _authStateController = Get.find<AuthStateController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthStateController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: InkWell(
              onTap: (() {
                Get.back();
              }),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            title: const Text(
              "User type",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: "PoppinsMedium"
              ),
            ),
          ),
          body: Container(
            height: Get.height,
            width: Get.width,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20,),
                    const Text(
                      "User Type",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "PoppinsMedium"
                      ),
                    ),
                    const Text(
                      "So we would love to know what type of user\nyou are, this will help differenciate your\nin app experience",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontFamily: "PoppinsMedium"
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Material(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        height: 60,
                        width: Get.width,
                        child: Center(
                          child: RadioListTile(
                            value: 1, 
                            groupValue: controller.radioValue, 
                            onChanged: ((value) {
                              controller.updateRadioState(value);
                            }),
                            title: const Text(
                              "Worker",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Material(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        height: 60,
                        width: Get.width,
                        child: Center(
                          child: RadioListTile(
                            value: 2,
                            groupValue: controller.radioValue,
                            onChanged: ((value) {
                              controller.updateRadioState(value);
                            }),
                            title: const Text(
                              "Contractor",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50,),
                    SizedBox(
                      height: 50,
                      width: Get.width,
                      child: TextButton(
                        onPressed: (){
                          Get.toNamed(chooseInterstsScreen);
                        }, 
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: const Color(0xff1B5299)
                        ),
                        child: const Text(
                          "Continue",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: "PoppinsMedium"
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}