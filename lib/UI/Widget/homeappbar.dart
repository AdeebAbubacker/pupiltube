// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  String studentName = '';

  @override
  void initState() {
    super.initState();
    _loadStudentName();
  }

  Future<void> _loadStudentName() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      studentName = prefs.getString('studentName') ??
          'Guest'; // Default to 'Guest' if not set
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Hi, ${studentName} ', style: TextStyles.rubik20black54A),
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
