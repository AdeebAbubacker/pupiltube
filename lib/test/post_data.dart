import 'package:flutter/material.dart';
import 'package:puppil/core/service/teacher/course/course_servcies.dart';

class PostData extends StatelessWidget {
  const PostData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                CourseServcies().fetchMyCourses("d");
              },
              child: const Text("call"))
        ],
      )),
    );
  }
}

