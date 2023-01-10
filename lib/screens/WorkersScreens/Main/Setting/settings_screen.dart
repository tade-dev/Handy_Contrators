import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/routes/app_route_names.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
          "Settings",
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20,),
                const Text(
                  "General",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontFamily: "PoppinsMedium"
                  ),
                ),
                const SizedBox(height: 5,),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        _listTile(Iconsax.briefcase, "Applications", (){Get.toNamed(jobApplicationScreen);}),
                        _listTile(Iconsax.profile_circle, "Profile", (){Get.toNamed(profileScreen);}),
                        ListTile(
                          leading: const Icon(
                            Iconsax.notification4,
                            size: 20,
                            color: Colors.black,
                          ),
                         title: const Text(
                            "Job Alerts",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          trailing: CupertinoSwitch(
                            value: true, 
                            onChanged: ((value) {
                              
                            }),
                            activeColor: const Color(0xff1B5299)
                          ),
                        ),
                        _listTile(Iconsax.lock, "Change password", (){Get.toNamed(profileScreen);}),
                      ],
                    ),
                  )
                ),
                const SizedBox(height: 30,),
                const Text(
                  "Help",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontFamily: "PoppinsMedium"
                  ),
                ),
                const SizedBox(height: 5,),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        _listTile(Iconsax.message_2, "Give feedback", (){Get.toNamed(profileScreen);}),
                        _listTile(Iconsax.judge, "T/C & Privacy", (){Get.toNamed(profileScreen);}),
                        _listTile(Iconsax.info_circle, "Help center",(){Get.toNamed(profileScreen);}),
                        const ListTile(
                         title: Text(
                            "Version",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          trailing: Text(
                            "1.0.0",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ),
                const SizedBox(height: 30,),
                InkWell(
                  onTap: (){
                    // Get.toNamed(signUpScreen);
                  }, 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Iconsax.logout,
                        size: 20,
                        color: Color(0xff1B5299),                       
                      ),
                      SizedBox(width: 10,),
                      Text(
                        "Logout",
                        style: TextStyle(
                          color: Color(0xff1B5299),
                          fontSize: 15,
                          // fontFamily: "PoppinsMedium"
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                InkWell(
                  onTap: (){
                    // Get.toNamed(signUpScreen);
                  }, 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Iconsax.trash,
                        size: 20,
                        color: Colors.red                       
                      ),
                      SizedBox(width: 10,),
                      Text(
                        "Delete Account",
                        style: TextStyle(
                          color: Colors.red ,                      
                          fontSize: 15,
                          // fontFamily: "PoppinsMedium"
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListTile _listTile(IconData icons, String text, dynamic onTap) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icons,
        size: 20,
        color: Colors.black,
      ),
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 15,
          // fontFamily: "PoppinsMedium"
        ),
      ),
    );
  }
}