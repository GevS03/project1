import 'package:flutter/material.dart';
import 'package:project1/features/main_page/view/appBar/logo_nots.dart';
import 'package:project1/features/main_page/view/appBar/stories.dart';

// ignore: must_be_immutable
class InstaAppBar extends StatefulWidget {
  const InstaAppBar({super.key});

  @override
  State<InstaAppBar> createState() => _InstaAppBarState();
}

class _InstaAppBarState extends State<InstaAppBar> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Stories(),
        LogoNots(),
      ],
    );
  }
}
