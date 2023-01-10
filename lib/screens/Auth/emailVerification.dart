import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/routes/app_route_names.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../controller/auth_state_controller.dart';

class EmailVerificationScreen extends StatelessWidget {
  EmailVerificationScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthStateController _authStateController = Get.find<AuthStateController>();


  @override
  Widget build(BuildContext context) {
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
          "Verification",
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
                  "Email Verification",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: "PoppinsMedium"
                  ),
                ),
                const Text(
                  "We just sent a 6-digit otp to your email\nakintadeseun@gmail.com",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontFamily: "PoppinsMedium"
                  ),
                ),
                const SizedBox(height: 30,),
                PinCodeTextField(
                  appContext: context, 
                  length: 6, 
                  onChanged: ((value) {
                    
                  }),
                  pinTheme: PinTheme(
                    inactiveColor: Colors.grey,
                    selectedColor: const Color(0xff1B5299),
                    activeColor: const Color(0xff1B5299)
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: (){}, 
                      child: const Text(
                        "Resend otp?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontFamily: "PoppinsMedium"
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30,),
                SizedBox(
                  height: 50,
                  width: Get.width,
                  child: TextButton(
                    onPressed: (){
                      Get.toNamed(userTypeScreen);
                    }, 
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: const Color(0xff1B5299)
                    ),
                    child: const Text(
                      "Verify",
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
}