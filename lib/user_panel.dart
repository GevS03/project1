import 'package:flutter/material.dart';
import 'package:project1/app_bar.dart';
import 'package:project1/body/body.dart';
import 'package:project1/bottom_nav.dart';

class UserPanel extends StatefulWidget {
  const UserPanel({super.key});

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
              bodyMedium: TextStyle(
                  color: Colors.black,
                  fontSize: 13.5,
                  fontWeight: FontWeight.w400),
              headlineMedium: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400)),
          appBarTheme: const AppBarTheme(
              elevation: 0.2,
              backgroundColor: Colors.white,
              toolbarHeight: 160)),
      home: Scaffold(
          appBar: AppBar(
            title: InstaAppBar(),
          ),
          body: const Body(),
          bottomNavigationBar: const BottomNav()),
    );
  }
}
