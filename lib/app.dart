import 'package:flutter/material.dart';
import 'package:project1/features/main_page/view/appBar/app_bar.dart';
import 'package:project1/features/main_page/view/bottomNav/bottom_nav.dart';
import 'package:project1/features/main_page/view/body/body.dart';
import 'package:project1/theme/theme.dart';

class UserPanel extends StatefulWidget {
  const UserPanel({super.key});

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: Scaffold(
          appBar: AppBar(
            title: const InstaAppBar(),
          ),
          body: const Body(),
          bottomNavigationBar: const BottomNav()),
    );
  }
}
