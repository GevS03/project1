import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project1/profiles.dart';

class UserPanel extends StatefulWidget {
  const UserPanel({super.key});

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {
  final profiles = <Profile>[
    Profile(name: 'Your story', hazStory: true, isLive: false),
    Profile(name: 'leeviahq', hazStory: false, isLive: true),
    Profile(name: 'ladyinblack', hazStory: true, isLive: true),
    Profile(name: 'beardman', hazStory: true, isLive: false),
    Profile(name: 'parzivalthe', hazStory: false, isLive: false),
  ];

  _hazStory(bool story) {
    if (story) {
      return SvgPicture.asset('assets/ProfileImages/storyCircle.svg');
    }
  }

  _isLive(bool live) {
    if (live) {
      return SvgPicture.asset('assets/ProfileImages/live.svg');
    }
  }

  _add(int index) {
    if (index == 0) {
      return SvgPicture.asset('assets/ProfileImages/add.svg');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
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
          title: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset('assets/appBar/logo.svg'),
                  const Padding(padding: EdgeInsets.only(left: 100)),
                  SvgPicture.asset('assets/appBar/add_not_send.svg'),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                width: double.infinity,
                height: 95,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: profiles.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 95,
                      width: 74,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 66,
                            width: 66,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  child: _hazStory(profiles[index].hazStory),
                                ),
                                const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 30.5,
                                ),
                                CircleAvatar(
                                  radius: 29,
                                  backgroundImage: AssetImage(
                                      'assets/ProfileImages/${profiles[index].name}.jpeg'),
                                ),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  child: _add(index),
                                ),
                                Container(
                                  alignment: Alignment.bottomCenter,
                                  child: _isLive(profiles[index].isLive),
                                )
                              ],
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(top: 5)),
                          Text(
                            profiles[index].name,
                            style: Theme.of(context).textTheme.headlineMedium,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 247, top: 32),
                child:
                    SvgPicture.asset('assets/ProfileImages/notification.svg'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
