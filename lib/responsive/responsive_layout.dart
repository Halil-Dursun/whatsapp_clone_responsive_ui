import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileSceenLayout;
  final Widget webScreenLayout;
  const ResponsiveLayout({Key? key,required this.mobileSceenLayout,required this.webScreenLayout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,contrains){
      if (contrains.maxWidth>900) {
        //WEB  Screen
        return webScreenLayout;
      } else {
        //Mobile,Tablet Screen
        return mobileSceenLayout;
      }
    });
  }
}