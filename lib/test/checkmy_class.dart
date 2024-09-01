import 'package:flutter/material.dart';
import 'package:puppil/core/constant/text_style.dart';

class ExamResultScreen extends StatelessWidget {
  const ExamResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.all(
                  Radius.circular(23),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Text(
                    "You have scored 8 / 10",
                    style: TextStyles.rubik20black54Aw600,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "92 %",
                    style: TextStyles.rubik26black54A,
                  ),
                  const SizedBox(height: 40),
                  const DashedLine(
                    color: Color.fromARGB(255, 211, 210, 209),
                  ),
                  const Spacer(),
                  Text(
                    "You earned the badge",
                    style: TextStyles.rubik16grey367,
                  ),
                  Image.asset('assets/icon/badge.jpg'),

                  //  Text(
                  //   "You Should Improve",
                  //   style: TextStyles.rubik16grey367,
                  // ),
                  // Image.asset(
                  //   'assets/animated/sorry.gif',
                  //   width: 180,
                  // ),
                  const Spacer(),
                ],
              ),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {}, child: const Text("Review Answers")),
              const SizedBox(width: 50),
              ElevatedButton(
                  onPressed: () {}, child: const Text("Back To Home")),
            ],
          ),
          const SizedBox(height: 50)
        ],
      ),
    );
  }
}

class DashedLine extends StatelessWidget {
  final Color color;
  final double height;
  final double dashWidth;
  final double dashSpacing;

  const DashedLine({
    super.key,
    required this.color,
    this.height = 2.0,
    this.dashWidth = 6.0,
    this.dashSpacing = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashedLinePainter(
        color: color,
        height: height,
        dashWidth: dashWidth,
        dashSpacing: dashSpacing,
      ),
      child: Container(
        height: height,
      ),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  final Color color;
  final double height;
  final double dashWidth;
  final double dashSpacing;

  DashedLinePainter({
    required this.color,
    required this.height,
    required this.dashWidth,
    required this.dashSpacing,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeCap = StrokeCap.round
      ..strokeWidth = height;

    double startX = 0.0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpacing;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
