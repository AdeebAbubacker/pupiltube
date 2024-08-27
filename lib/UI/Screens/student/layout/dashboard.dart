// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:puppil/UI/Screens/student/assesment/assesment_screen.dart';
import 'package:puppil/UI/Screens/student/feedback/feedback_screen.dart';
import 'package:puppil/UI/Screens/student/home/home_screen.dart';
import 'package:puppil/UI/Widget/homeappbar.dart';
import 'package:puppil/UI/Widget/miscappbar.dart';
import 'package:puppil/core/constant/text_style.dart';

class StudentDashboardScreen extends StatefulWidget {
  const StudentDashboardScreen({super.key});

  @override
  State<StudentDashboardScreen> createState() => _StudentDashboardScreenState();
}

class _StudentDashboardScreenState extends State<StudentDashboardScreen> {
  int _selectedIndex = 1;
  static final List<Widget> _screens = [
    HomeScreen(),
    const AssesmentScreen(),
    const Screen3(),
    const Screen4(),
    const Screen5(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 0
          ? null
          : AppBar(
              backgroundColor: Colors.white,
              actions: [],
              centerTitle: true,
              title: SizedBox(
                  width: 170, child: Image.asset('assets/icon/pupil.png')),
              leading: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
            ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _screens[_selectedIndex],
              SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      )),
      bottomNavigationBar: SizedBox(
        height: 70.0,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.assessment), label: 'Assessment'),
            BottomNavigationBarItem(
                icon: Icon(Icons.reviews), label: 'Reviews'),
            BottomNavigationBarItem(
                icon: Icon(Icons.feedback), label: 'Feedback'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
