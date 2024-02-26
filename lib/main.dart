// ignore_for_file: prefer_const_constructors

import 'package:dambu_store_app/bindings/general_bindings.dart';
import 'package:dambu_store_app/features/auth/views/onboard/onboard.dart';
import 'package:dambu_store_app/features/auth/views/register/register_screen.dart';
import 'package:dambu_store_app/features/store/view/home/home_page.dart';
import 'package:dambu_store_app/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dambu Store App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      initialBinding: GeneralBindings(),
      home: RegisterScreen(),
    );
  }
}
