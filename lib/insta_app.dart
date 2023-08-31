import 'package:flutter/material.dart';
import 'package:project1/features/main_page/main_page.dart';
import 'package:project1/theme/theme.dart';

class InstaApp extends StatelessWidget {
  const InstaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      initialRoute: '/',
      routes: {'/': (context) => const MainPage()},
    );
  }
}
