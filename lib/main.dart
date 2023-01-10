import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/routes/app_route_names.dart';
import 'package:handy_contractors/routes/app_routes.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins"
      ),
      initialRoute: loginScreen,
      getPages: getPages,
    );
  }
} 