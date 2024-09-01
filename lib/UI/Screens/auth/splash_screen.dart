// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/routes/app_route.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () async {
      final User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        // User is logged in, retrieve the user's role
        try {
          DocumentSnapshot userDoc = await FirebaseFirestore.instance
              .collection('Users')
              .doc(user.uid)
              .get();

          if (userDoc.exists) {
            int role = userDoc.get('role');

            // Navigate based on role
            switch (role) {
              case 1:
                AppRouteService.navigateToAdminDashboard(context);
                break;
              case 2:
                AppRouteService.navigateToTeacherDashboard(context);

                break;
              case 3:
                AppRouteService.navigateToStudentDashboard(context);
                break;
              default:
                // Handle unexpected roles
                AppRouteService.navigateToIntroScreen(context);
                break;
            }
          } else {
            // User document does not exist
            AppRouteService.navigateToIntroScreen(context);
          }
        } catch (e) {

          AppRouteService.navigateToIntroScreen(context);
        }
      } else {
        // User is not logged in
        AppRouteService.navigateToIntroScreen(context);
      }
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
                  "Copyright @ 2024 Pupil Tube",
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
