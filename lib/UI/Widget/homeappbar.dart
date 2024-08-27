// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:puppil/core/constant/text_style.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Hi, Rahul ', style: TextStyles.rubik20black54A),
            SizedBox(
                width: 50,
                height: 50,
                child: Image.asset("assets/icon/wavehand.png")),
            Spacer(),
            Material(
              color: Colors.transparent,
              shape: CircleBorder(),
              child: InkWell(
                onTap: () {},
                customBorder: CircleBorder(),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Center(
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset("assets/icon/notification.png"),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Text('Fina a source you want to learn!',
            style: TextStyles.rubik14greyDA6)
      ],
    );
  }
}
