import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenWidget;
  final Widget mobileScreenWidget;
  const ResponsiveLayout(
      {super.key,
      required this.webScreenWidget,
      required this.mobileScreenWidget});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenSize) {
          return webScreenWidget;
        } else {
          return mobileScreenWidget;
        }
      },
    );
  }
}
