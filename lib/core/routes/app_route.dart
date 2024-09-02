import 'package:flutter/material.dart';
import 'package:puppil/UI/Screens/auth/intro_screen.dart';
import 'package:puppil/UI/Screens/teacher/assesment/section/assesment_doyouknow_screen.dart';
import 'package:puppil/UI/Screens/teacher/assesment/section/assesment_intro_screen.dart';
import 'package:puppil/UI/Screens/teacher/questions/section/question_bank_creation_screen.dart';
import 'package:puppil/core/models/assesment/assesment_model.dart';
import 'package:puppil/core/models/courses/courses_model.dart';

class AppRouteService {
  static void navigateToquestionBankIntro(BuildContext context) {
    Navigator.of(context).pushNamed('/questionBankIntro');
  }

  // static void navigateToquestionBankCreation(BuildContext context) {
  //   Navigator.of(context).pushNamed('/questionBankCreation');
  // }
   static void navigatequestionBnakCreation(BuildContext context,{required String someArgument}) {
    Navigator.of(context).push(_questionBnakCreation(someArgument: someArgument));
  }

  static void navigateToassesmentIntro(BuildContext context,{required String someArgument}) {
    Navigator.of(context).push(_assesmentIntro(someArgument: someArgument));
  }

  static void navigateToassesmentDoYouKnow(BuildContext context,{required String someArgument}) {
    Navigator.of(context).push(_assesmentDoYouKnow(someArgument: someArgument));
  }

  static void navigateToAssesmentCreation(BuildContext context,
      {required ModelToAssesmentCreation model}) {
    Navigator.of(context).pushNamed('/assesmentCreation', arguments: model);
  }

  static void navigateTotest2(BuildContext context,
      {required AssessmentModel assementmodel}) {
    Navigator.of(context).pushNamed('/test2', arguments: assementmodel);
  }

  static void navigateToIntroScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const IntroScreen()),
    );
  }

  static void navigateSignupRoleScreen(
    BuildContext context,
  ) {
    Navigator.of(context).pushNamed(
      '/signupRoleScreen',
    );
  }

  static void navigateSigninScreen(
    BuildContext context,
  ) {
    Navigator.of(context).pushNamed(
      '/signinScreen',
    );
  }

  static void navigateToIntroScreenCleared(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      '/introScreen',
      (Route route) => false,
    );
  }

  static void navigateSignupScreen(BuildContext context,
      {required int roleId}) {
    Navigator.of(context).pushNamed(
      '/signupScreen',
      arguments: roleId,
    );
  }

  static void navigateToStudentDashboard(BuildContext context) {
    Navigator.of(context).pushNamed('/studentDashboard');
  }

  static void navigateToTeacherDashboard(BuildContext context) {
    Navigator.of(context).pushNamed('/teacherDashboard');
  }

  static void navigateToAdminDashboard(BuildContext context) {
    Navigator.of(context).pushNamed('/adminDashboard');
  }

  static void navigateToAssesmentStatus(BuildContext context,
      {required String assementId}) {
    Navigator.of(context).pushNamed('/assesmentStatus', arguments: assementId);
  }

  static void navigateTovideoPlayScreen(BuildContext context,
      {required Data data}) {
    Navigator.of(context).pushNamed('/videoPlayScreen', arguments: data);
  }

  static Route _assesmentDoYouKnow({required String someArgument}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          AssesmentDoyouknowScreen(someArgument: someArgument), // Pass argument here
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0); // Start from right to left
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
static Route _assesmentIntro({required String someArgument}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          AssesmentIntroScreen(someArgument: someArgument), // Replace with your target screen
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0); // Start from right to left
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
  static Route _questionBnakCreation({required String someArgument}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          QuestionBankCreationScreen(someArgument: someArgument), // Pass argument here
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0); // Start from right to left
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}

class ModelToAssesmentCreation {
  final String assementId;
  final String title;
  final String description;

  ModelToAssesmentCreation({
    required this.assementId,
    required this.title,
    required this.description,
  });
}
