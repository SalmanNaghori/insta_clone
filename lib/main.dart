import 'package:flutter/material.dart';
import 'package:insta_clone/responsive/mobile_screen_layout.dart';
import 'package:insta_clone/responsive/reponsive_layout_screen.dart';
import 'package:insta_clone/responsive/web_screen_layout.dart';
import 'package:insta_clone/constant/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Insta Clone',
        theme: ThemeData.dark(useMaterial3: true)
            .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
        home: const ResponsiveLayout(
          mobileScreen: MobileScreen(),
          webScreen: WebScreen(),
        ));
  }
}
