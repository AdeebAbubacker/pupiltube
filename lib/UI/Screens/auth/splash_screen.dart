import 'package:flutter/material.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/routes/app_route.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      AppRouteService.navigateToIntroScreen(context);
    });
    return Scaffold(
      backgroundColor: const Color(0XFFFCFCFF),
      body: Center(
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Image.asset('assets/icon/pupil.png')),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  "Version 1.0.1",
                  style: TextStyles.rubikregular14black3B,
                ),
                const SizedBox(height: 10),
                Text(
                  "Copyright @ 2024 Yes Yes Loyalty",
                  style: TextStyles.rubikregular14grey66,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
