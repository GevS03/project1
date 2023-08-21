import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project1/profiles.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        appBarTheme: AppBarTheme(
            elevation: 1, backgroundColor: Colors.white, toolbarHeight: 150)),
    home: UserPanel(),
  ));
}

class UserPanel extends StatefulWidget {
  const UserPanel({super.key});

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {
  final _Profiles = <Profile>[
    Profile('Your story'),
    Profile('leeviahq'),
    Profile('ladyinblack'),
    Profile('beardman'),
    Profile('parzivalthe'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/appBar/logo.svg'),
                SvgPicture.asset('assets/appBar/add_not_send.svg')
              ],
            ),
            Container(
              width: double.infinity,
              height: 95,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 95,
                    width: 74,
                    child: Column(
                      children: [
                        Text(
                          'sfdsfsdf',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
