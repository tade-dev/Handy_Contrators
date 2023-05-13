import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/controller/auth_state_controller.dart';
import 'package:handy_contractors/routes/app_route_names.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

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
              "Login",
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
                      "Welcome Back",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "PoppinsMedium"
                      ),
                    ),
                    const Text(
                      "We are happy to see you again. To access\nyour account please log into your account",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontFamily: "PoppinsMedium"
                      ),
                    ),
                    const SizedBox(height: 30,),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        controller.updateEmail(value);
                      },
                      validator: ValidationBuilder().minLength(3).email().build(),
                      decoration: const InputDecoration(
                        hintText: "Enter Email Address",
                        prefixIcon: Icon(
                          Icons.mail_outline_rounded,
                          color: Color(0xff1B5299),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff1B5299)
                          )
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff1B5299)
                          )
                        ),
                      ), 
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: (value) {
                        controller.updatePassword(value);
                      },
                      validator: ValidationBuilder().minLength(8).build(),
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Color(0xff1B5299),
                        ),
                        suffixIcon: Icon(
                          Icons.visibility_outlined,
                          color: Color(0xff1B5299),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff1B5299)
                          )
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff1B5299)
                          )
                        ),
                      ), 
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: (){}, 
                          child: const Text(
                            "Forgot password",
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
                          controller.loginUser()
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
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: "PoppinsMedium"
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account ?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontFamily: "PoppinsMedium"
                          ),
                        ),
                        TextButton(
                          onPressed: (){
                            Get.toNamed(signUpScreen);
                          }, 
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Color(0xff1B5299),
                              fontSize: 12,
                              fontFamily: "PoppinsMedium"
                            ),
                          ),
                        ),
                      ],
                    )
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