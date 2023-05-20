import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/screens/WorkersScreens/Main/ContractorList/tab_views/recommended_view.dart';
import 'package:handy_contractors/screens/WorkersScreens/Main/ContractorList/tab_views/worked_view.dart';

class ContractorListScreen extends StatelessWidget {
  const ContractorListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Contractors",
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
                    text: "Worked",
                  ),
                  Tab(    
                    text: "Recommended",
                  ),
                ]
              ),
              const SizedBox(height: 20,),
              const Expanded(
                child: TabBarView(
                  children: [
                    WorkedView(),
                    RecommendedView()
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