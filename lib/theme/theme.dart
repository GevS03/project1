import 'package:flutter/material.dart';

final theme = ThemeData(
    textTheme: const TextTheme(
        bodyMedium: TextStyle(
            color: Colors.black, fontSize: 13.5, fontWeight: FontWeight.w400),
        headlineMedium: TextStyle(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400)),
    appBarTheme: const AppBarTheme(
        elevation: 0.2, backgroundColor: Colors.white, toolbarHeight: 160));
