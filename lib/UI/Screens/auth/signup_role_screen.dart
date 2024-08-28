// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:puppil/core/routes/app_route.dart';

class SignUpRolePage extends StatefulWidget {
  const SignUpRolePage({super.key});

  @override
  State<SignUpRolePage> createState() => _SignUpRolePageState();
}

class _SignUpRolePageState extends State<SignUpRolePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 80, 80, 80),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text('Choose your Sign Up role',
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 247, 247, 247),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                    onTap: () {
                      AppRouteService.navigateSignupScreen(
                        context,
                        roleId: 1,
                      );
                    },
                    child: Container(
                      width: 256,
                      height: 256,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/icon/admin.jpg'),
                      ),
                    )),
                const SizedBox(
                  height: 15,
                ),
                Text('Become an Admin',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                const SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    AppRouteService.navigateSignupScreen(
                      context,
                      roleId: 3,
                    );
                  },
                  child: Container(
                    width: 256,
                    height: 256,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/icon/student.jpg')),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text('Become a Student',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                const SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    AppRouteService.navigateSignupScreen(
                      context,
                      roleId: 2,
                    );
                  },
                  child: Container(
                    width: 256,
                    height: 256,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/icon/teacher.jpg')),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text('Become a Teacher',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RoleModel {
  final String roleid;

  RoleModel({
    required this.roleid,
  });
}
