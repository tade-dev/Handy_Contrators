//   ========== APP ROUTES ==========

import 'package:get/get.dart';
import 'package:handy_contractors/routes/app_route_names.dart';
import 'package:handy_contractors/screens/WorkersScreens/Auth/choose_intersts_screen.dart';
import 'package:handy_contractors/screens/WorkersScreens/Main/Chats/chats_list_screen.dart';
import 'package:handy_contractors/screens/WorkersScreens/Main/Jobs/job_applications.dart';
import 'package:handy_contractors/screens/WorkersScreens/Main/Jobs/job_details_screen.dart';
import 'package:handy_contractors/screens/WorkersScreens/Main/Notification/notification_screen.dart';
import 'package:handy_contractors/screens/WorkersScreens/Main/Profile/edit_profile.dart';
import 'package:handy_contractors/screens/WorkersScreens/Main/Profile/profile_screen.dart';
import 'package:handy_contractors/screens/WorkersScreens/Main/Setting/settings_screen.dart';
import 'package:handy_contractors/screens/WorkersScreens/Main/holder_screen.dart';

import '../screens/Auth/emailVerification.dart';
import '../screens/Auth/loginScreen.dart';
import '../screens/Auth/signUpScreen.dart';
import '../screens/Auth/userTypeScreen.dart';

List<GetPage> getPages = [

  // AUTH ROUTE
  GetPage(
    name: loginScreen,
    page: () => LoginScreen(),
    transition: Transition.cupertino,
    transitionDuration: const Duration(seconds: 2)
  ),
  GetPage(
    name: emailVerificationScreen,
    page: ()=> EmailVerificationScreen(),
    transition: Transition.cupertino,
    transitionDuration: const Duration(seconds: 1)
  ),
  GetPage(
    name: signUpScreen,
    page: ()=> SignUpScreen(),
    transition: Transition.cupertino,
    transitionDuration: const Duration(seconds: 2)
  ),
  GetPage(
    name: userTypeScreen,
    page: ()=> UserTypeScreen(),
    transition: Transition.cupertino,
    transitionDuration: const Duration(seconds: 1)
  ),


  // WORKERS ROUTE
  GetPage(
    name: chooseInterstsScreen,
    page: ()=> ChooseInterstsScreen(),
    transition: Transition.cupertino,
    transitionDuration: const Duration(seconds: 1)
  ), 
  GetPage(
    name: holderScreen,
    page: ()=> HolderScreen(),
    transition: Transition.cupertino,
    transitionDuration: const Duration(seconds: 1)
  ), 
  GetPage(
    name: jobDetailScreen,
    page: ()=> JobDetailScreen(),
    transition: Transition.cupertino,
    transitionDuration: const Duration(seconds: 1)
  ), 
  GetPage(
    name: notificationScreen,
    page: ()=> NotificationScreen(),
    transition: Transition.cupertino,
    transitionDuration: const Duration(seconds: 1)
  ), 
  GetPage(
    name: chatListScreen,
    page: ()=> ChatListScreen(),
    transition: Transition.cupertino,
    transitionDuration: const Duration(seconds: 1)
  ), 
  GetPage(
    name: settingsScreen,
    page: ()=> SettingsScreen(),
    transition: Transition.cupertino,
    transitionDuration: const Duration(seconds: 1)
  ), 
  GetPage(
    name: profileScreen,
    page: ()=> ProfileScreen(),
    transition: Transition.cupertino,
    transitionDuration: const Duration(seconds: 1)
  ), 
  GetPage(
    name: editProfileScreen,
    page: ()=> EditProfileScreen(),
    transition: Transition.cupertino,
    transitionDuration: const Duration(seconds: 1)
  ), 
  GetPage(
    name: jobApplicationScreen,
    page: ()=> JobApplicationScreen(),
    transition: Transition.cupertino,
    transitionDuration: const Duration(seconds: 1)
  ), 

];