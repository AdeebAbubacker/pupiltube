import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fruit_shop_app/core/constants/text_styles.dart';
// import 'package:fruit_shop_app/core/routes/app_route.dart';
// import 'package:fruit_shop_app/core/view_model/login/login_bloc.dart';
// import 'package:fruit_shop_app/widgets/buttons.dart';
// import 'package:fruit_shop_app/widgets/textfield.dart';
import 'package:jumping_dot/jumping_dot.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/view_model/login/login_bloc.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final FocusNode emailfocusNode = FocusNode();
  final FocusNode passwordfocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        emailfocusNode.unfocus();
        passwordfocusNode.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            state.maybeMap(
              loginSuccess: (value) {
           
                // Navigate to home screen
              },
              loginFailure: (value) {
             
                // Show error message
              },
              loading: (_) {
         
              },
              orElse: () {},
            );
          },
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FractionallySizedBox(
                        widthFactor: 0.75,
                        child: Image.asset(
                          'assets/vegan.png',
                          fit: BoxFit.contain,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Hello, Welcome back!',
                        style: TextStyles.rubik13black54A,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Sign in to continue',
                        style: TextStyles.rubik13black54A,
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextField(
                            controller: emailcontroller,
                            focusNode: emailfocusNode,
                          ),
                          SizedBox(height: 10),
                          TextField(
                            controller: passwordcontroller,
                            focusNode: passwordfocusNode,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                          onPressed: () {
                            final email = emailcontroller.text;
                            final password = passwordcontroller.text;
                            context.read<LoginBloc>().add(
                                LoginEvent.loginRequested(
                                    email: email, password: password));
                          },
                          child: Text('data'))
                      // ColoredButton(
                      //   onPressed: () {
                      //     final email = emailcontroller.text;
                      //     final password = passwordcontroller.text;
                      //     context.read<LoginBloc>().add(
                      //         LoginEvent.loginRequested(
                      //             email: email, password: password));
                      //   },
                      //   text: 'Sign In',
                      // ),
                      ,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyles.rubik13black54A,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Sign Up",
                              style: TextStyles.rubik13black54A,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Visibility(
                      visible:
                          false, // Change this to true to show the loading indicator
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Container(
                          width: 120,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(137, 212, 210, 210),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: JumpingDots(
                            color: Color.fromARGB(210, 109, 255, 143),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
