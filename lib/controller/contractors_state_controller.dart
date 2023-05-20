import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/ContractorsScreen/Main/home/contractorHomeScreen.dart';
import '../screens/ContractorsScreen/Main/workers/WorkersList/workerslist.dart';


class ContractorsStateController extends GetxController{
  // INSTANT VARIABLES
  int _selectedIndex = 0;
  List<Widget> _screens = [
    ContractorHomeScreen(),
    WorkersListScreen()
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