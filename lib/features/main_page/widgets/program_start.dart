import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProgramStart extends StatelessWidget {
  const ProgramStart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5),
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
                      icon: SvgPicture.asset('assets/appBar/send.svg'),
                    )
                  ],
                ),
                SvgPicture.asset('assets/ProfileImages/notification.svg'),
              ],
            )
          ],
        ),
      ],
    );
  }
}
