// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:puppil/UI/Screens/teacher/assesment/assesment_screen.dart';
import 'package:puppil/UI/Screens/teacher/questions/question_screen.dart';
import 'package:puppil/UI/Screens/teacher/home/home_screen.dart';
import 'package:puppil/UI/Screens/teacher/profile/profile_screen.dart';
import 'package:puppil/UI/Screens/teacher/analatycs/analatycs_screen.dart';
import 'package:puppil/UI/Widget/homeappbar.dart';
import 'package:puppil/UI/Widget/miscappbar.dart';
import 'package:puppil/core/constant/text_style.dart';

class TeachesDashboardScreen extends StatefulWidget {
  const TeachesDashboardScreen({super.key});

  @override
  State<TeachesDashboardScreen> createState() => _TeachesDashboardScreenState();
}

class _TeachesDashboardScreenState extends State<TeachesDashboardScreen> {
  int _selectedIndex = 1;
  static final List<Widget> _screens = [
    HomeScreen(),
    const AssesmentScreen(),
    const QuestionBankManagementScreen(),
    const AnalatycsScreen(),
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
              backgroundColor: Color(0XFFFCFCFF),
              actions: [],
              centerTitle: true,
              title: SizedBox(
                  width: 170, child: Image.asset('assets/icon/pupil.png')),
              leading: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
            ),
      backgroundColor: Color(0XFFFCFCFF),
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
          backgroundColor: Color(0XFFFCFCFF),
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.assessment), label: 'Assessment'),
            BottomNavigationBarItem(
                icon: Icon(Icons.reviews), label: 'Questions'),
            BottomNavigationBarItem(
                icon: Icon(Icons.feedback), label: 'Analatycs'),
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
