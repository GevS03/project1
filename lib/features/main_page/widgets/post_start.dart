import 'package:flutter/material.dart';
import 'package:project1/models/insta_posts/post.dart';

class PostStart extends StatelessWidget {
  const PostStart({super.key, required this.posts, required this.index});

  final int index;
  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
                iconSize: 30,
                onPressed: () {},
                icon: const CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/ProfileImages/profile1.jpeg',
                  ),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  posts[index].accountName,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Text(
                      posts[index].city,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w400),
                    ),
                    const Text(', '),
                    Text(
                      posts[index].country,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            )
          ],
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
      ],
    );
  }
}
