// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/routes/app_route.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFFCFCFF),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.06,
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Image.asset(
                    'assets/icon/pupil.png',
                  ),
                ),
              ),
              Container(
                width: 250,
                height: 345,
                child: Image.asset('assets/animated/School boy studying.gif'),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Welcome to pupitube",
                textAlign: TextAlign.center,
                style: TextStyles.rubik14black54A,
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                            const Color.fromARGB(255, 227, 146, 24))),
                    onPressed: () async {
                      AppRouteService.navigateSigninScreen(
                        context,
                      );
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: OutlinedButton(
                        onPressed: () async {
                          AppRouteService.navigateSignupRoleScreen(context);
                        },
                        child: const Text("Sign Up"))),
              ),
              const SizedBox(height: 10)
            ],
          ),
        ),
      ),
    );
  }
}
