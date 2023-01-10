import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/controller/auth_state_controller.dart';
import 'package:handy_contractors/routes/app_route_names.dart';

class ChooseInterstsScreen extends StatelessWidget {
  ChooseInterstsScreen({super.key});

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
              "Interests",
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
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 20,),
                  const Text(
                    "Choose Interests",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "PoppinsMedium"
                    ),
                  ),
                  const Text(
                    "Please select your job interest from the\nvarious categories below",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontFamily: "PoppinsMedium"
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(1),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey
                            )
                          ),
                          child: const Text(
                            "Carpenter",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              // fontFamily: "PoppinsMedium"
                            ),
                          ),
                        ),
                      ),     
                      const SizedBox(width: 20,), 
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(1),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey
                            )
                          ),
                          child: const Text(
                            "Plumber",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              // fontFamily: "PoppinsMedium"
                            ),
                          ),
                        ),
                      ),               
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(1),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey
                            )
                          ),
                          child: const Text(
                            "Electronics",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              // fontFamily: "PoppinsMedium"
                            ),
                          ),
                        ),
                      ),     
                      const SizedBox(width: 20,), 
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(1),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey
                            )
                          ),
                          child: const Text(
                            "Construction",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              // fontFamily: "PoppinsMedium"
                            ),
                          ),
                        ),
                      ),               
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(1),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey
                            )
                          ),
                          child: const Text(
                            "Shoe making",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              // fontFamily: "PoppinsMedium"
                            ),
                          ),
                        ),
                      ),     
                      const SizedBox(width: 20,), 
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(1),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey
                            )
                          ),
                          child: const Text(
                            "Tailoring",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              // fontFamily: "PoppinsMedium"
                            ),
                          ),
                        ),
                      ),               
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(1),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey
                            )
                          ),
                          child: const Text(
                            "Mechanics",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              // fontFamily: "PoppinsMedium"
                            ),
                          ),
                        ),
                      ),     
                      const SizedBox(width: 20,), 
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(1),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey
                            )
                          ),
                          child: const Text(
                            "Farming",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              // fontFamily: "PoppinsMedium"
                            ),
                          ),
                        ),
                      ),               
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(1),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey
                            )
                          ),
                          child: const Text(
                            "Mining",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              // fontFamily: "PoppinsMedium"
                            ),
                          ),
                        ),
                      ),     
                      const SizedBox(width: 20,), 
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(1),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey
                            )
                          ),
                          child: const Text(
                            "Welding",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              // fontFamily: "PoppinsMedium"
                            ),
                          ),
                        ),
                      ),               
                    ],
                  ), 
                  const SizedBox(height: 50,),
                  SizedBox(
                    height: 50,
                    width: Get.width,
                    child: TextButton(
                      onPressed: (){
                        Get.toNamed(holderScreen);
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
        );
      }
    );
  }
}