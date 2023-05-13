import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../controller/auth_state_controller.dart';

class EmailVerificationScreen extends StatelessWidget {
  EmailVerificationScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthStateController _authStateController = Get.put(AuthStateController());


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
                      "We just sent a 6-digit otp to your email\nakintadese",
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
                        controller.updateOtpCode(value);
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
                          onPressed: (){
                            (_formKey.currentState!.validate())?
                            controller.resendVerification()
                            :                      
                            AutovalidateMode.disabled;  
                          }, 
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
                      child: (controller.isLoading)?
                      const SpinKitDualRing(
                        color: Color(0xff1B5299)
                      )
                      :
                      TextButton(
                        onPressed: (){
                          (_formKey.currentState!.validate())?
                          controller.verifyEmail()
                          :                      
                          AutovalidateMode.disabled;  
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
    );
  }
}