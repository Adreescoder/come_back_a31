import 'package:come_back_a31/screens/history_screen/logic.dart';
import 'package:come_back_a31/screens/home_screen/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut<History_screenLogic>(() => History_screenLogic());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      theme: ThemeData.light(), // Light theme
      darkTheme: ThemeData.dark(), // Dark theme
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      title: 'Come_Back_a31',
      home: HomeScreen(),
    );
  }
}
