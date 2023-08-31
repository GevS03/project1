import 'package:flutter/material.dart';
import 'package:project1/models/insta_profiles/profile.dart';

class LikedBy extends StatelessWidget {
  const LikedBy({
    super.key,
    required this.profiles,
  });

  final List<Profile> profiles;

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
