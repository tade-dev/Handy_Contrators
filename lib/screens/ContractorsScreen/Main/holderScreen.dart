import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/controller/workers_state_controller.dart';
import 'package:handy_contractors/routes/app_route_names.dart';
import 'package:iconsax/iconsax.dart';

import '../../../controller/contractors_state_controller.dart';

class ContractorHolderScreen extends StatelessWidget {
  ContractorHolderScreen({super.key});

  final ContractorsStateController _contractorsStateController = Get.put(ContractorsStateController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContractorsStateController>(
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
                      Iconsax.profile_2user,
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
                  FloatingActionButton(
                    onPressed: () {
                      Get.toNamed(createJobScreen);
                    },
                    backgroundColor: const Color(0xff1B5299),
                    child: const Icon(
                      Iconsax.add,
                      color: Colors.white,
                    ),
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
                      Get.toNamed(contractorSettingScreen);
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