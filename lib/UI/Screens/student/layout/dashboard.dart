// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:puppil/UI/Screens/student/modules/assesment/assesment_screen.dart';
import 'package:puppil/UI/Screens/student/modules/events/events_screen.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/UI/Screens/student/modules/home/home_screen.dart';
import 'package:puppil/UI/Screens/student/modules/profile/profile_screen.dart';
import 'package:puppil/UI/Screens/teacher/modules/profile/profile_screen.dart';
import 'package:puppil/core/routes/app_route.dart';
import 'package:puppil/core/view_model/login/login_bloc.dart';
import 'package:puppil/UI/Screens/student/modules/assesment/section/test_screen.dart';

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
    const EventsSection(),
    const StudentsProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_selectedIndex == 0) {
          SystemNavigator.pop();

          // Allow exit
        } else if (_selectedIndex == 1 ||
            _selectedIndex == 2 ||
            _selectedIndex == 3) {
          setState(() {
            _selectedIndex = 0;
          });
          return false; // Prevent exit
        }

        return false; // Prevent exit by default
      },
      child: Scaffold(
        appBar: _selectedIndex == 0
            ? null
            : AppBar(
                backgroundColor: Colors.white,
                actions: [],
                centerTitle: true,
                title: SizedBox(
                    width: 170, child: Image.asset('assets/icon/pupil.png')),
                leading: IconButton(
                    onPressed: () {
                      setState(
                        () {
                          if (_selectedIndex == 1 ||
                              _selectedIndex == 2 ||
                              _selectedIndex == 3) {
                            _selectedIndex = 0;
                          }
                        },
                      );
                    },
                    icon: Icon(Icons.arrow_back_ios)),
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
                  icon: Icon(Icons.event_available), label: 'Events'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.red,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
            onPressed: () {
              BlocProvider.of<LoginBloc>(context)
                  .add(const LoginEvent.logoutRequested());
            },
            child: const Text("logout")),
      ),
    );
  }
}
