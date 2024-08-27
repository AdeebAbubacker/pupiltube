// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:puppil/core/constant/text_style.dart';

class AssesmentScreen extends StatelessWidget {
  const AssesmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Text(
          'My Assesments',
          style: TextStyles.rubik16grey367,
        ),
        const SizedBox(height: 40),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              AssesmentPageViewButton(
                  image: 'assets/icon/lightbulb.png',
                  title: 'All Assesment',
                  color: Color.fromARGB(255, 255, 233, 231)),
              SizedBox(width: 10),
              AssesmentPageViewButton(
                image: 'assets/icon/announcement.png',
                title: 'Upcming',
                color: Color.fromARGB(255, 255, 249, 223),
              ),
              SizedBox(width: 10),
              AssesmentPageViewButton(
                image: 'assets/icon/announcement.png',
                title: 'Overdue',
                color: Color.fromARGB(255, 228, 223, 255),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 30,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Physics", // Add your subject name here
                            style: TextStyles.ibm14redDA6,
                          ),
                          Text(
                            "Chapter 1",
                            style: TextStyles.ibm14redDA6,
                          ),
                          Text(
                            "10 Question",
                            style: TextStyles.rubik12greyDA6,
                          ),
                          Text(
                            "3 Hour 15 min",
                            style: TextStyles.rubik12greyDA6,
                          )
                        ],
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class AssesmentPageViewButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color color;
  final String title;
  final String image;
  AssesmentPageViewButton({
    super.key,
    required this.title,
    required this.image,
    required this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          color: color,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 30.0,
                height: 30.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Text(title),
            SizedBox(width: 5)
          ],
        ),
      ),
    );
  }
}
