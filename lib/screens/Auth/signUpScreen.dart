import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/routes/app_route_names.dart';
import 'package:iconsax/iconsax.dart';

import '../../controller/auth_state_controller.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

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
          "Sign up",
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
                  "Create Account",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: "PoppinsMedium"
                  ),
                ),
                const Text(
                  "Please provide us the necessary information\nin order to create your account",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontFamily: "PoppinsMedium"
                  ),
                ),
                const SizedBox(height: 30,),
                TextFormField(
                  keyboardType: TextInputType.name,
                  onChanged: (value) {
                    
                  },
                  validator: ValidationBuilder().minLength(3).build(),
                  decoration: const InputDecoration(
                    hintText: "Enter Fullname",
                    prefixIcon: Icon(
                      Icons.person_outline,
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
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    
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
                const SizedBox(height: 20,),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  onChanged: (value) {
                    
                  },
                  validator: ValidationBuilder().minLength(5).build(),
                  decoration: const InputDecoration(
                    hintText: "Enter Phonenumber",
                    prefixIcon: Icon(
                      Icons.phone_outlined,
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
                const SizedBox(height: 50,),
                SizedBox(
                  height: 50,
                  width: Get.width,
                  child: TextButton(
                    onPressed: (){
                      Get.toNamed(emailVerificationScreen);
                    }, 
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: const Color(0xff1B5299)
                    ),
                    child: const Text(
                      "Sign up",
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
                      "Already have an account ?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontFamily: "PoppinsMedium"
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        Get.toNamed(loginScreen);
                      }, 
                      child: const Text(
                        "Login",
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
}