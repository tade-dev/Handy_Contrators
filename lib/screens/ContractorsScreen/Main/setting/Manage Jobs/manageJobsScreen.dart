import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/screens/ContractorsScreen/Main/setting/Manage%20Jobs/tabViews/available_view.dart';
import 'package:handy_contractors/screens/ContractorsScreen/Main/setting/Manage%20Jobs/tabViews/completed_view.dart';
import 'package:iconsax/iconsax.dart';

class ManageJobsScreen extends StatelessWidget {
  const ManageJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: (() {
              Get.back();
            }),
            child: const Icon(
              Iconsax.arrow_left,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Manage Jobs",
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
          child: Column(
            children: [
              const SizedBox(height: 20,),
              TabBar(
                isScrollable: true,
                indicator: BoxDecoration(
                  color: const Color(0xff1B5299),
                  borderRadius: BorderRadius.circular(20)
                ),
                unselectedLabelColor: Colors.black,
                tabs: const[
                  Tab(
                    text: "Available",
                  ),
                  Tab(    
                    text: "Completed",
                  ),
                ]
              ),
              const SizedBox(height: 20,),
              const Expanded(
                child: TabBarView(
                  children: [
                    AvailableView(),
                    CompletedView()
                  ]
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}