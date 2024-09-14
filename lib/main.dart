// ignore_for_file: prefer_const_constructors
//------------------------------------------------------
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/UI/Screens/admin/layout/loyout_screen.dart';
import 'package:puppil/UI/Screens/auth/intro_screen.dart';
import 'package:puppil/UI/Screens/auth/signin_screen.dart';
import 'package:puppil/UI/Screens/auth/signup_role_screen.dart';
import 'package:puppil/UI/Screens/auth/signup_screen.dart';
import 'package:puppil/UI/Screens/auth/splash_screen.dart';
import 'package:puppil/UI/Screens/student/layout/dashboard.dart';
import 'package:puppil/UI/Screens/teacher/modules/assesment/section/assesment_creation_screen.dart';
import 'package:puppil/UI/Screens/teacher/modules/assesment/section/assesment_step1_creation.dart';
import 'package:puppil/UI/Screens/teacher/modules/assesment/section/assesment_intro_screen.dart';
import 'package:puppil/UI/Screens/teacher/modules/assesment/section/assesment_review_screen.dart';
import 'package:puppil/UI/Screens/teacher/modules/assesment/section/assesment_status.dart';
import 'package:puppil/UI/Screens/teacher/modules/home/widget/video_player.dart';
import 'package:puppil/UI/Screens/teacher/layout/dashboard.dart';
import 'package:puppil/UI/Screens/teacher/modules/questions/section/question_bank_creation_screen.dart';
import 'package:puppil/UI/Screens/teacher/modules/questions/section/question_bank_intro_screen.dart';
import 'package:puppil/core/service/admin/role_servcie/get_role_service.dart';
import 'package:puppil/core/service/auth/auth_service.dart';
import 'package:puppil/core/service/student/assesment/assesment_service.dart';
import 'package:puppil/core/service/student/events/events_servcie.dart';
import 'package:puppil/core/service/teacher/assesment/assesment_service.dart';
import 'package:puppil/core/service/teacher/course/course_servcies.dart';
import 'package:puppil/core/service/teacher/question_bank/question_bank_service.dart';
import 'package:puppil/core/service/teacher/submission/submission_service.dart';
import 'package:puppil/core/view_model/GetMyClassCourses/get_my_class_courses_bloc.dart';
import 'package:puppil/core/view_model/GetUserDataByRoles/get_user_data_by_roles_bloc.dart';
import 'package:puppil/core/view_model/assesment/assesment_bloc.dart';
import 'package:puppil/core/view_model/fetch_assesment_by_colleages/fetch_assesment_by_colleages_bloc.dart';
import 'package:puppil/core/view_model/getMyQuestionBankAsTeacher/get_my_question_banks_as_teacher_bloc.dart';
import 'package:puppil/core/view_model/login/login_bloc.dart';
import 'package:puppil/core/view_model/question_bank/question_bank_bloc.dart';
import 'package:puppil/core/view_model/review_assesment/review_assesment_bloc.dart';
import 'package:puppil/core/view_model/signup/signup_bloc.dart';
import 'package:puppil/core/view_model/studentToAttend/students_to_attend_bloc.dart';
import 'package:puppil/core/view_model/student_submission/student_submission_bloc.dart';
import 'package:puppil/core/view_model/students_event/students_events_bloc.dart';
import 'package:puppil/firebase_options.dart';
import 'package:puppil/test/pppppppppppp.dart';
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
//-----------------------------
//------------------------------
//---------------------
//--
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
        BlocProvider(
          create: (context) => StudentSubmissionBloc(
            assesmentService: AssesmentService(),
          ),
        ),
        BlocProvider(
          create: (context) => StudentsToAttendBloc(
            submissionService: SubmissionService(),
          ),
        ),
        BlocProvider(
          create: (context) => GetUserDataByRolesBloc(
            getRoleService: GetRoleService(),
          ),
        ),
        BlocProvider(
          create: (context) => GetMyClassCoursesBloc(
            courseServcies: CourseServcies(),
          ),
        ),
        BlocProvider(
          create: (context) => FetchAssesmentByColleagesBloc(
            assesmentService: AssesmentService(),
          ),
        ),
        BlocProvider(
          create: (context) => ReviewAssesmentBloc(
            assesmentService: AssesmentService(),
          ),
        ),
        BlocProvider(
          create: (context) => SignupBloc(
            authService: AuthService(FirebaseAuth.instance),
          ),
        ),
        BlocProvider(
          create: (context) => StudentsEventsBloc(
            eventsService: EventsService(),
          ),
        ),
        BlocProvider(
          create: (context) => GetMyQuestionBanksAsTeacherBloc(
            questionBankService: QuestionBankService(),
          ),
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
          '/signinScreen': (context) => SigninScreen(),
          '/signupScreen': (context) => SignupScreen(),
          '/test2': (context) => TestScreen2(),
          '/questionBankIntro': (context) => QuestionBankIntroScreen(),
          '/questionBankCreation': (context) => QuestionBankCreationScreen(),
          '/assesmentIntro': (context) => AssesmentIntroScreen(),
          '/assesmentDoYouKnow': (context) => AssesmentStep1Creation(),
          '/assesmentCreation': (context) => AssesmentCreationScreen(),
          '/studentDashboard': (context) => StudentDashboardScreen(),
          '/teacherDashboard': (context) => TeachesDashboardScreen(),
          '/adminDashboard': (context) => AdminDashboardScreen(),
          '/assesmentStatus': (context) => AssesmentStatus(),
          '/videoPlayScreen': (context) => VideoPlayer(),
        },
      ),
    );
  }
}
"// Automated comment added on 2024-$month-$day" ; \
// Automated comment 1 for 2024-01-01
// Automated comment 2 for 2024-01-01
// Automated comment 3 for 2024-01-01
// Automated comment 4 for 2024-01-01
// Automated comment 5 for 2024-01-01
// Automated comment 6 for 2024-01-01
// Automated comment 7 for 2024-01-01
// Automated comment 8 for 2024-01-01
// Automated comment 9 for 2024-01-01
// Automated comment 10 for 2024-01-01
// Automated comment 11 for 2024-01-01
// Automated comment 12 for 2024-01-01
// Automated comment 1 for 2024-01-02
// Automated comment 2 for 2024-01-02
// Automated comment 3 for 2024-01-02
// Automated comment 4 for 2024-01-02
// Automated comment 5 for 2024-01-02
// Automated comment 6 for 2024-01-02
// Automated comment 7 for 2024-01-02
// Automated comment 8 for 2024-01-02
// Automated comment 9 for 2024-01-02
// Automated comment 10 for 2024-01-02
// Automated comment 11 for 2024-01-02
// Automated comment 12 for 2024-01-02
// Automated comment 1 for 2024-01-03
// Automated comment 2 for 2024-01-03
// Automated comment 3 for 2024-01-03
// Automated comment 4 for 2024-01-03
// Automated comment 5 for 2024-01-03
// Automated comment 6 for 2024-01-03
// Automated comment 7 for 2024-01-03
// Automated comment 8 for 2024-01-03
// Automated comment 9 for 2024-01-03
// Automated comment 10 for 2024-01-03
// Automated comment 11 for 2024-01-03
// Automated comment 12 for 2024-01-03
// Automated comment 1 for 2024-01-04
// Automated comment 2 for 2024-01-04
// Automated comment 3 for 2024-01-04
// Automated comment 4 for 2024-01-04
// Automated comment 5 for 2024-01-04
// Automated comment 6 for 2024-01-04
// Automated comment 7 for 2024-01-04
// Automated comment 8 for 2024-01-04
// Automated comment 9 for 2024-01-04
// Automated comment 10 for 2024-01-04
// Automated comment 11 for 2024-01-04
// Automated comment 12 for 2024-01-04
// Automated comment 1 for 2024-01-05
// Automated comment 2 for 2024-01-05
// Automated comment 3 for 2024-01-05
// Automated comment 4 for 2024-01-05
// Automated comment 5 for 2024-01-05
// Automated comment 6 for 2024-01-05
// Automated comment 7 for 2024-01-05
// Automated comment 8 for 2024-01-05
// Automated comment 9 for 2024-01-05
// Automated comment 10 for 2024-01-05
// Automated comment 11 for 2024-01-05
// Automated comment 12 for 2024-01-05
// Automated comment 1 for 2024-01-06
// Automated comment 2 for 2024-01-06
// Automated comment 3 for 2024-01-06
// Automated comment 4 for 2024-01-06
// Automated comment 5 for 2024-01-06
// Automated comment 6 for 2024-01-06
// Automated comment 7 for 2024-01-06
// Automated comment 8 for 2024-01-06
// Automated comment 9 for 2024-01-06
// Automated comment 10 for 2024-01-06
// Automated comment 11 for 2024-01-06
// Automated comment 12 for 2024-01-06
// Automated comment 1 for 2024-01-07
// Automated comment 2 for 2024-01-07
// Automated comment 3 for 2024-01-07
// Automated comment 4 for 2024-01-07
// Automated comment 5 for 2024-01-07
// Automated comment 6 for 2024-01-07
// Automated comment 7 for 2024-01-07
// Automated comment 8 for 2024-01-07
// Automated comment 9 for 2024-01-07
// Automated comment 10 for 2024-01-07
// Automated comment 11 for 2024-01-07
// Automated comment 12 for 2024-01-07
// Automated comment 1 for 2024-01-08
// Automated comment 2 for 2024-01-08
// Automated comment 3 for 2024-01-08
// Automated comment 4 for 2024-01-08
// Automated comment 5 for 2024-01-08
// Automated comment 6 for 2024-01-08
// Automated comment 7 for 2024-01-08
// Automated comment 8 for 2024-01-08
// Automated comment 9 for 2024-01-08
// Automated comment 10 for 2024-01-08
// Automated comment 11 for 2024-01-08
// Automated comment 12 for 2024-01-08
// Automated comment 1 for 2024-01-09
// Automated comment 2 for 2024-01-09
// Automated comment 3 for 2024-01-09
// Automated comment 4 for 2024-01-09
// Automated comment 5 for 2024-01-09
// Automated comment 6 for 2024-01-09
// Automated comment 7 for 2024-01-09
// Automated comment 8 for 2024-01-09
// Automated comment 9 for 2024-01-09
// Automated comment 10 for 2024-01-09
// Automated comment 11 for 2024-01-09
// Automated comment 12 for 2024-01-09
// Automated comment 1 for 2024-01-10
// Automated comment 2 for 2024-01-10
// Automated comment 3 for 2024-01-10
// Automated comment 4 for 2024-01-10
// Automated comment 5 for 2024-01-10
// Automated comment 6 for 2024-01-10
// Automated comment 7 for 2024-01-10
// Automated comment 8 for 2024-01-10
// Automated comment 9 for 2024-01-10
// Automated comment 10 for 2024-01-10
// Automated comment 11 for 2024-01-10
// Automated comment 12 for 2024-01-10
// Automated comment 1 for 2024-01-11
// Automated comment 2 for 2024-01-11
// Automated comment 3 for 2024-01-11
// Automated comment 4 for 2024-01-11
// Automated comment 5 for 2024-01-11
// Automated comment 6 for 2024-01-11
// Automated comment 7 for 2024-01-11
// Automated comment 8 for 2024-01-11
// Automated comment 9 for 2024-01-11
// Automated comment 10 for 2024-01-11
// Automated comment 11 for 2024-01-11
// Automated comment 12 for 2024-01-11
// Automated comment 1 for 2024-01-12
// Automated comment 2 for 2024-01-12
// Automated comment 3 for 2024-01-12
// Automated comment 4 for 2024-01-12
// Automated comment 5 for 2024-01-12
// Automated comment 6 for 2024-01-12
// Automated comment 7 for 2024-01-12
// Automated comment 8 for 2024-01-12
// Automated comment 9 for 2024-01-12
// Automated comment 11 for 2024-01-12
// Automated comment 12 for 2024-01-12
// Automated comment 1 for 2024-01-13
// Automated comment 2 for 2024-01-13
// Automated comment 3 for 2024-01-13
// Automated comment 4 for 2024-01-13
// Automated comment 5 for 2024-01-13
// Automated comment 6 for 2024-01-13
// Automated comment 7 for 2024-01-13
// Automated comment 8 for 2024-01-13
// Automated comment 9 for 2024-01-13
// Automated comment 10 for 2024-01-13
// Automated comment 11 for 2024-01-13
// Automated comment 12 for 2024-01-13
// Automated comment 1 for 2024-01-14
// Automated comment 2 for 2024-01-14
// Automated comment 3 for 2024-01-14
// Automated comment 4 for 2024-01-14
// Automated comment 5 for 2024-01-14
// Automated comment 6 for 2024-01-14
// Automated comment 7 for 2024-01-14
// Automated comment 8 for 2024-01-14
// Automated comment 9 for 2024-01-14
// Automated comment 10 for 2024-01-14
// Automated comment 11 for 2024-01-14
// Automated comment 12 for 2024-01-14
// Automated comment 1 for 2024-01-15
// Automated comment 2 for 2024-01-15
// Automated comment 3 for 2024-01-15
// Automated comment 4 for 2024-01-15
// Automated comment 5 for 2024-01-15
// Automated comment 6 for 2024-01-15
// Automated comment 7 for 2024-01-15
// Automated comment 8 for 2024-01-15
// Automated comment 9 for 2024-01-15
// Automated comment 10 for 2024-01-15
// Automated comment 11 for 2024-01-15
// Automated comment 12 for 2024-01-15
// Automated comment 1 for 2024-01-16
// Automated comment 2 for 2024-01-16
// Automated comment 3 for 2024-01-16
// Automated comment 4 for 2024-01-16
// Automated comment 5 for 2024-01-16
// Automated comment 6 for 2024-01-16
// Automated comment 7 for 2024-01-16
// Automated comment 8 for 2024-01-16
// Automated comment 9 for 2024-01-16
// Automated comment 10 for 2024-01-16
// Automated comment 11 for 2024-01-16
// Automated comment 12 for 2024-01-16
// Automated comment 1 for 2024-01-17
// Automated comment 2 for 2024-01-17
// Automated comment 3 for 2024-01-17
// Automated comment 4 for 2024-01-17
// Automated comment 5 for 2024-01-17
// Automated comment 6 for 2024-01-17
// Automated comment 7 for 2024-01-17
// Automated comment 8 for 2024-01-17
// Automated comment 9 for 2024-01-17
// Automated comment 10 for 2024-01-17
// Automated comment 11 for 2024-01-17
// Automated comment 12 for 2024-01-17
// Automated comment 1 for 2024-01-18
// Automated comment 2 for 2024-01-18
// Automated comment 3 for 2024-01-18
// Automated comment 4 for 2024-01-18
// Automated comment 5 for 2024-01-18
// Automated comment 6 for 2024-01-18
// Automated comment 7 for 2024-01-18
// Automated comment 8 for 2024-01-18
// Automated comment 9 for 2024-01-18
// Automated comment 10 for 2024-01-18
// Automated comment 11 for 2024-01-18
// Automated comment 12 for 2024-01-18
// Automated comment 1 for 2024-01-19
// Automated comment 2 for 2024-01-19
// Automated comment 3 for 2024-01-19
// Automated comment 4 for 2024-01-19
// Automated comment 5 for 2024-01-19
// Automated comment 6 for 2024-01-19
// Automated comment 7 for 2024-01-19
// Automated comment 8 for 2024-01-19
// Automated comment 9 for 2024-01-19
// Automated comment 10 for 2024-01-19
// Automated comment 11 for 2024-01-19
// Automated comment 12 for 2024-01-19
// Automated comment 1 for 2024-01-20
// Automated comment 2 for 2024-01-20
// Automated comment 3 for 2024-01-20
// Automated comment 4 for 2024-01-20
// Automated comment 5 for 2024-01-20
// Automated comment 6 for 2024-01-20
// Automated comment 7 for 2024-01-20
// Automated comment 8 for 2024-01-20
// Automated comment 9 for 2024-01-20
// Automated comment 10 for 2024-01-20
// Automated comment 11 for 2024-01-20
// Automated comment 12 for 2024-01-20
// Automated comment 1 for 2024-01-21
// Automated comment 2 for 2024-01-21
// Automated comment 3 for 2024-01-21
// Automated comment 4 for 2024-01-21
// Automated comment 5 for 2024-01-21
// Automated comment 6 for 2024-01-21
// Automated comment 7 for 2024-01-21
// Automated comment 8 for 2024-01-21
// Automated comment 9 for 2024-01-21
// Automated comment 10 for 2024-01-21
// Automated comment 11 for 2024-01-21
// Automated comment 12 for 2024-01-21
// Automated comment 1 for 2024-01-22
// Automated comment 2 for 2024-01-22
// Automated comment 3 for 2024-01-22
// Automated comment 4 for 2024-01-22
// Automated comment 5 for 2024-01-22
// Automated comment 6 for 2024-01-22
// Automated comment 7 for 2024-01-22
// Automated comment 8 for 2024-01-22
// Automated comment 9 for 2024-01-22
// Automated comment 10 for 2024-01-22
// Automated comment 11 for 2024-01-22
// Automated comment 12 for 2024-01-22
// Automated comment 1 for 2024-01-23
// Automated comment 2 for 2024-01-23
// Automated comment 3 for 2024-01-23
// Automated comment 4 for 2024-01-23
// Automated comment 5 for 2024-01-23
// Automated comment 6 for 2024-01-23
// Automated comment 7 for 2024-01-23
// Automated comment 8 for 2024-01-23
// Automated comment 9 for 2024-01-23
// Automated comment 10 for 2024-01-23
// Automated comment 11 for 2024-01-23
// Automated comment 12 for 2024-01-23
// Automated comment 1 for 2024-01-24
// Automated comment 2 for 2024-01-24
