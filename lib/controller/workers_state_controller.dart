import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/screens/WorkersScreens/Main/Home/homeScreen.dart';
import 'package:handy_contractors/screens/WorkersScreens/Main/Jobs/jobs_screen.dart';

import '../screens/WorkersScreens/Main/ContractorList/contractors_list.dart';

class WorkersStateController extends GetxController{
  // INSTANT VARIABLES
  int _selectedIndex = 0;
  List<Widget> _screens = [
    HomeScreen(),
    JobScreen(),
    ContractorListScreen()
    
  ];
  final List<String> _workInterests = [
    
  ];

  // GETTERS
  int get selectedIndex => _selectedIndex;
  List<Widget> get screens => _screens;

  // SETTERS
  updateSelectedIndexItem(value) {
    _selectedIndex = value;
    update();
  }
}