// ignore_for_file: prefer_const_constructors
//-------------------------------------------------------------------------

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/UI/Screens/auth/intro_screen.dart';
import 'package:puppil/UI/Screens/auth/signin_screen.dart';
import 'package:puppil/UI/Screens/auth/signin_role_screen.dart';
import 'package:puppil/UI/Screens/auth/signup_role_screen.dart';
import 'package:puppil/UI/Screens/auth/signup_screen.dart';
import 'package:puppil/UI/Screens/auth/splash_screen.dart';
import 'package:puppil/UI/Screens/student/assesment/section/assesment_taking_intro_screen.dart';
import 'package:puppil/UI/Screens/student/assesment/section/asssesment_taking_screen.dart';
import 'package:puppil/UI/Screens/student/feedback/feedback_screen.dart';
import 'package:puppil/UI/Screens/student/layout/dashboard.dart';
import 'package:puppil/UI/Screens/teacher/assesment/section/assesment_creation_screen.dart';
import 'package:puppil/UI/Screens/teacher/assesment/section/assesment_doyouknow_screen.dart';
import 'package:puppil/UI/Screens/teacher/assesment/section/assesment_intro_screen.dart';
import 'package:puppil/UI/Screens/teacher/layout/dashboard.dart';
import 'package:puppil/UI/Screens/teacher/questions/section/question_bank_creation_screen.dart';
import 'package:puppil/UI/Screens/teacher/questions/section/question_bank_intro_screen.dart';
import 'package:puppil/core/service/auth/auth_service.dart';
import 'package:puppil/core/service/student/assesment/assesment_service.dart';
import 'package:puppil/core/service/teacher/assesment/assesment_service.dart';
import 'package:puppil/core/service/teacher/question_bank/question_bank_service.dart';
import 'package:puppil/core/view_model/assesment/assesment_bloc.dart';
import 'package:puppil/core/view_model/login/login_bloc.dart';
import 'package:puppil/core/view_model/question_bank/question_bank_bloc.dart';
import 'package:puppil/firebase_options.dart';
import 'package:puppil/test/test_screen.dart';
import 'package:puppil/test/test_screen_2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    //  runApp(const MyApp());

    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(
            AuthService(FirebaseAuth.instance),
          ),
        ),
        BlocProvider(
          create: (context) => AssesmentBloc(
            assesmentService: AssesmentService(),
            assesmentStudentService: AssesmentStudentService(),
          ),
        ),
        BlocProvider(
          create: (context) =>
              QuestionBankBloc(questionBankService: QuestionBankService()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: '/',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          '/': (context) => SplashScreen(),
          '/introScreen': (context) => IntroScreen(),
          '/signupRoleScreen': (context) => SignUpRolePage(),
          '/signinRoleScreen': (context) => SigninRoleScreen(),
          '/signinScreen': (context) => SigninScreen(),
          '/signupScreen': (context) => SignupScreen(),
          '/test2': (context) => TestScreen2(),
          '/questionBankIntro': (context) => QuestionBankIntroScreen(),
          '/questionBankCreation': (context) => QuestionBankCreationScreen(),
          '/assesmentIntro': (context) => AssesmentIntroScreen(),
          '/assesmentDoYouKnow': (context) => AssesmentDoyouknowScreen(),
          '/assesmentCreation': (context) => AssesmentCreationScreen(),
          '/studentDashboard': (context) => StudentDashboardScreen(),
          '/teacherDashboard': (context) => TeachesDashboardScreen(),
        },
      ),
    );
  }
}
