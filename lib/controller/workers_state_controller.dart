import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/screens/WorkersScreens/Main/Home/homeScreen.dart';
import 'package:handy_contractors/screens/WorkersScreens/Main/Jobs/jobs_screen.dart';

class WorkersStateController extends GetxController{
  // INSTANT VARIABLES
  int _selectedIndex = 0;
  List<Widget> _screens = [
    HomeScreen(),
    JobScreen(),
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