import 'package:flutter/material.dart';
import 'package:project1/features/main_page/view/body/profile.dart';

// ignore: must_be_immutable
class LikedBy extends StatelessWidget {
  LikedBy({super.key});

  List<Profile> profiles = [
    Profile(name: 'Your story', hazStory: true, isLive: false),
    Profile(name: 'leeviahq', hazStory: false, isLive: true),
    Profile(name: 'ladyinblack', hazStory: true, isLive: true),
    Profile(name: 'beardman', hazStory: true, isLive: false),
    Profile(name: 'parzivalthe', hazStory: false, isLive: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(padding: EdgeInsets.only(left: 10)),
        const SizedBox(
          width: 50,
          height: 20,
          child: Stack(
            children: [
              Positioned(
                left: 25,
                child: CircleAvatar(
                  radius: 10,
                  backgroundImage:
                      AssetImage('assets/ProfileImages/profile2.jpeg'),
                ),
              ),
              Positioned(
                left: 12,
                child: CircleAvatar(
                  radius: 10,
                  backgroundImage:
                      AssetImage('assets/ProfileImages/profile3.jpeg'),
                ),
              ),
              CircleAvatar(
                radius: 10,
                backgroundImage:
                    AssetImage('assets/ProfileImages/profile4.jpeg'),
              )
            ],
          ),
        ),
        Text(
          'Liked by ',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          profiles[3].name,
          style: const TextStyle(
              color: Colors.black, fontSize: 13.5, fontWeight: FontWeight.w500),
        ),
        Text(
          ' and ',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Text(
          'others',
          style: TextStyle(
              color: Colors.black, fontSize: 13.5, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
