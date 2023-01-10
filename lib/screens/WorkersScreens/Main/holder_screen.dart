import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/controller/workers_state_controller.dart';
import 'package:handy_contractors/routes/app_route_names.dart';
import 'package:iconsax/iconsax.dart';

class HolderScreen extends StatelessWidget {
  HolderScreen({super.key});

  final WorkersStateController _workersStateController = Get.put(WorkersStateController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WorkersStateController>(
      builder: (controller) {
        return Scaffold(
          body: controller.screens[controller.selectedIndex],
          bottomNavigationBar: BottomAppBar(
            child: Container(
              height: 70,
              width: Get.width,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: (){
                      controller.updateSelectedIndexItem(0);
                    }, 
                    child: Icon(
                      Iconsax.home,
                      color: (controller.selectedIndex == 0)?
                      (
                        const Color(0xff1B5299)
                      ):
                      (
                        Colors.grey
                      ),
                      size: 25,
                    )
                  ),
                  TextButton(
                    onPressed: (){
                      controller.updateSelectedIndexItem(1);
                    }, 
                    child: Icon(
                      Iconsax.briefcase,
                      color: (controller.selectedIndex == 1)?
                      (
                        const Color(0xff1B5299)
                      ):
                      (
                        Colors.grey
                      ),
                      size: 25,
                    )
                  ),
                  TextButton(
                    onPressed: (){
                      Get.toNamed(chatListScreen);
                    }, 
                    child: const Icon(
                      Iconsax.message,
                      color: Colors.grey,
                      size: 25,
                    )
                  ),
                  TextButton(
                    onPressed: (){
                      Get.toNamed(settingsScreen);
                    }, 
                    child: const Icon(
                      Iconsax.setting_2,
                      color: Colors.grey,
                      size: 25,
                    )
                  ),
                ],
              ),
            )
          ),
        );
      }
    );
  }
}