import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.posts, required this.index});

  final List posts;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Padding(padding: EdgeInsets.only(left: 10)),
            Text(
              posts[index].accountName,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 13.5,
                  fontWeight: FontWeight.w700),
            ),
            const Padding(padding: EdgeInsets.only(left: 5)),
            Text(
              posts[index].description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Image(
                width: 20,
                height: 20,
                image: AssetImage('assets/body/pictures/heart.jpeg'))
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 3)),
        Row(
          children: [
            const Padding(padding: EdgeInsets.only(left: 10)),
            Text(
              posts[index].hashtags.join(', '),
              style: const TextStyle(
                  fontSize: 13.5,
                  color: Colors.blue,
                  fontWeight: FontWeight.w400),
            )
          ],
        )
      ],
    );
  }
}
