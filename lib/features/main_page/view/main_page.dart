import 'package:flutter/material.dart';
import 'package:project1/features/main_page/main_page.dart';
import 'package:project1/models/insta_posts/post.dart';
import 'package:project1/models/insta_profiles/profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _UserPanelState();
}

class _UserPanelState extends State<MainPage> {
  List<Profile> profiles = [];
  List<Post> posts = [];

  @override
  void initState() {
    super.initState();

    posts.addAll([
      Post(
          accountName: 'pieroborgo',
          city: 'Paris',
          country: 'France',
          pictures: [
            Image.asset(
              'assets/body/pictures/picture1.jpeg',
              fit: BoxFit.fill,
            ),
            Image.asset(
              'assets/body/pictures/picture2.jpeg',
              fit: BoxFit.fill,
            ),
            Image.asset(
              'assets/body/pictures/picture3.jpeg',
              fit: BoxFit.fill,
            ),
          ],
          picturesNum: 3,
          description: 'Tanks for downloading this freebie',
          hashtags: ['#freebie', '#instagram', '#figma'])
    ]);

    profiles.addAll([
      Profile(name: 'Your story', hazStory: true, isLive: false),
      Profile(name: 'leeviahq', hazStory: false, isLive: true),
      Profile(name: 'ladyinblack', hazStory: true, isLive: true),
      Profile(name: 'beardman', hazStory: true, isLive: false),
      Profile(name: 'parzivalthe', hazStory: false, isLive: false),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Stack(
        children: [
          AccountsList(
            profiles: profiles,
          ),
          const ProgramStart()
        ],
      )),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(top: 5),
            child: Column(
              children: [
                PostStart(
                  posts: posts,
                  index: index,
                ),
                PostPictures(
                  posts: posts,
                  index: index,
                ),
                const Padding(padding: EdgeInsets.only(top: 5)),
                LikedBy(profiles: profiles),
                const Padding(padding: EdgeInsets.only(top: 3)),
                Description(posts: posts, index: index),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
