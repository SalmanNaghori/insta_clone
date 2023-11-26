import 'package:flutter/material.dart';
import 'package:insta_clone/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreen;
  final Widget webScreen;
  const ResponsiveLayout({
    Key? key,
    required this.mobileScreen,
    required this.webScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // TODO:web screen layout
      if (constraints.maxWidth > webScreenSize) {
        return webScreen;
      }
      // TODO: Mobile screen layout
      else {
        return mobileScreen;
      }
    });
  }
}
