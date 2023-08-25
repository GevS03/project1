import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project1/post.dart';
import 'package:project1/profile.dart';

class UserPanel extends StatefulWidget {
  const UserPanel({super.key});

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {
  List<Post> posts = [
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
  ];

  List<Profile> profiles = [
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

  int _selectedI = 0;

  _itemChanging(int index) {
    setState(() {
      if (index != _selectedI) {
        _selectedI = index;
      }
    });
  }

  int _selectedPictureI = 1;

  Color? _selectedPictureC;

  _selectedPicture(int index) {
    if (index == _selectedPictureI - 1) {
      _selectedPictureC = Colors.blue;
    } else {
      _selectedPictureC = Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
              bodyMedium: TextStyle(
                  color: Colors.black,
                  fontSize: 13.5,
                  fontWeight: FontWeight.w400),
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
                                      'assets/ProfileImages/profile${index + 1}.jpeg'),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: SvgPicture.asset('assets/appBar/logo.svg'),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset('assets/appBar/add.svg'),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset('assets/appBar/not.svg'),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon:
                                    SvgPicture.asset('assets/appBar/send.svg'),
                              )
                            ],
                          ),
                          SvgPicture.asset(
                              'assets/ProfileImages/notification.svg'),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(top: 5),
              child: Column(
                children: [
                  Row(
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
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_horiz))
                    ],
                  ),
                  Stack(children: [
                    SizedBox(
                      width: double.infinity,
                      height: 370,
                      child: PageView.builder(
                        onPageChanged: (value) {
                          setState(() {
                            _selectedPictureI = value + 1;
                          });
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: posts[index].pictures.length,
                        itemBuilder: (context, i) {
                          return Container(child: posts[index].pictures[i]);
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, right: 10),
                      alignment: Alignment.topRight,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(0, 0, 0, 0.70),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        width: 37,
                        height: 30,
                        child: Text(
                          '$_selectedPictureI/${posts[index].picturesNum}',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 12),
                        ),
                      ),
                    )
                  ]),
                  const Padding(padding: EdgeInsets.only(top: 5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  'assets/body/icons/like.svg')),
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  'assets/body/icons/comment.svg')),
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  'assets/body/icons/send.svg'))
                        ],
                      ),
                      SizedBox(
                        height: 7,
                        width: 100,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: posts[index].picturesNum,
                          itemBuilder: (context, index) {
                            _selectedPicture(index);
                            return CircleAvatar(
                              backgroundColor: _selectedPictureC,
                              radius: 5,
                            );
                          },
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/body/icons/save.svg'))
                    ],
                  ),
                  Row(
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
                                backgroundImage: AssetImage(
                                    'assets/ProfileImages/profile2.jpeg'),
                              ),
                            ),
                            Positioned(
                              left: 12,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage(
                                    'assets/ProfileImages/profile3.jpeg'),
                              ),
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage(
                                  'assets/ProfileImages/profile4.jpeg'),
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
                            color: Colors.black,
                            fontSize: 13.5,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        ' and ',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const Text(
                        'others',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.5,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(top: 3)),
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
              ),
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
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
        ),
      ),
    );
  }
}
