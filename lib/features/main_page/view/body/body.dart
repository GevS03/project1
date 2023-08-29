import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project1/features/main_page/view/body/post.dart';
import 'package:project1/features/main_page/view/body/like_com_send.dart';
import 'package:project1/features/main_page/view/body/liked_by.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Post> posts = [];

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
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
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
                  padding: const EdgeInsets.only(top: 10, right: 10),
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, 0.70),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    width: 37,
                    height: 30,
                    child: Text(
                      '$_selectedPictureI/${posts[index].picturesNum}',
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                )
              ]),
              const Padding(padding: EdgeInsets.only(top: 5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const LikeComSend(),
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
              LikedBy(),
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
    );
  }
}
