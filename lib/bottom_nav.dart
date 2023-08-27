import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedI = 0;

  _itemChanging(int index) {
    setState(() {
      if (index != _selectedI) {
        _selectedI = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: _itemChanging,
      currentIndex: _selectedI,
      items: [
        BottomNavigationBarItem(
          label: '',
          icon: IconButton(
            alignment: Alignment.bottomCenter,
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/bottomNav/home.svg',
              width: 22,
              height: 21,
            ),
          ),
        ),
        BottomNavigationBarItem(
            label: '',
            icon: Container(
              alignment: Alignment.centerLeft,
              child: IconButton(
                alignment: Alignment.center,
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/bottomNav/search.svg',
                  width: 21,
                  height: 22,
                ),
              ),
            )),
        BottomNavigationBarItem(
            label: '',
            icon: Container(
              alignment: Alignment.centerLeft,
              child: IconButton(
                alignment: Alignment.center,
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/bottomNav/reel.svg',
                  width: 22,
                  height: 22,
                ),
              ),
            )),
        BottomNavigationBarItem(
            label: '',
            icon: Container(
              alignment: Alignment.centerLeft,
              child: IconButton(
                alignment: Alignment.center,
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/bottomNav/shopping.svg',
                  width: 20,
                  height: 22,
                ),
              ),
            )),
        BottomNavigationBarItem(
            label: '',
            icon: Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  IconButton(
                    iconSize: 20,
                    onPressed: () {},
                    icon: const CircleAvatar(
                        backgroundImage: AssetImage(
                      'assets/ProfileImages/profile1.jpeg',
                    )),
                  ),
                  SvgPicture.asset('assets/bottomNav/oval.svg')
                ],
              ),
            )),
      ],
    );
  }
}
