import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:revista_way2/view/pages/login/login_page.dart';

import 'theme/app_colors.dart';
import 'view/pages/home/home_page.dart';
import 'view/pages/send_page/send_page.dart';
import 'view/pages/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  AppWidget({
    Key? key,
    required this.initialization,
  }) : super(key: key);
  final Future<FirebaseApp> initialization;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "RevistaWAY",
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      initialRoute: "/splash",
      routes: {
        "/home": (context) => HomePage(

            ),
        "/splash": (context) => SplashPage(),
        "/login": (context) => LoginPage(),
        "/send": (context) => SendPage(),
      },
      // home: SplashPage(),
      // //home: LoginPage(),
    );
  }
}
