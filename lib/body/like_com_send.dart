import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LikeComSend extends StatelessWidget {
  const LikeComSend({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
