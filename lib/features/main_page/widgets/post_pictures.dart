import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostPictures extends StatefulWidget {
  const PostPictures({super.key, required this.posts, required this.index});

  final List posts;
  final int index;

  @override
  State<PostPictures> createState() => _PostPicturesState();
}

class _PostPicturesState extends State<PostPictures> {
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
    return Column(children: [
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
            itemCount: widget.posts[widget.index].pictures.length,
            itemBuilder: (context, i) {
              return Container(child: widget.posts[widget.index].pictures[i]);
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
              '$_selectedPictureI/${widget.posts[widget.index].picturesNum}',
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        )
      ]),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/body/icons/like.svg')),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/body/icons/comment.svg')),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/body/icons/send.svg'))
            ],
          ),
          SizedBox(
            height: 7,
            width: 100,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: widget.posts[widget.index].picturesNum,
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
      )
    ]);
  }
}
