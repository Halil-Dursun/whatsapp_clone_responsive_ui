import 'package:flutter/material.dart';
import 'package:whatsapp_clone_responsive_ui/colors.dart';
import 'package:whatsapp_clone_responsive_ui/responsive/responsive_layout.dart';
import 'package:whatsapp_clone_responsive_ui/screens/mobile_screen_layout.dart';
import 'package:whatsapp_clone_responsive_ui/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(mobileSceenLayout: MobileScreenLayout(), webScreenLayout: WebScreenLayout()),
    );
  }
}
