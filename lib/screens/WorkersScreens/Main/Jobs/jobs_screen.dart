import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/screens/WorkersScreens/Main/Jobs/tab_views/ongoing_view.dart';
import 'package:handy_contractors/screens/WorkersScreens/Main/Jobs/tab_views/recommended_view.dart';
import 'package:handy_contractors/screens/WorkersScreens/Main/Jobs/tab_views/saved_view.dart';

class JobScreen extends StatelessWidget {
  const JobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Jobs",
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
                tabs: [
                  Tab(
                    text: "Ongoing",
                  ),
                  Tab(    
                    text: "Recommended",
                  ),
                  Tab(
                    text: "Saved",
                  )
                ]
              ),
              const SizedBox(height: 20,),
              Expanded(
                child: TabBarView(
                  children: [
                    OngoingView(),
                    RecommendedView(),
                    SavedView()
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