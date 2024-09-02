import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/routes/app_route.dart';
import 'package:puppil/core/view_model/login/login_bloc.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  bool _obscureText = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state.maybeMap(
          loading: (value) {},
          loginSuccess: (value) {
            if (value.role == 1) {
              AppRouteService.navigateToAdminDashboard(context);
            } else if (value.role == 2) {
              AppRouteService.navigateToTeacherDashboard(context);
              print('teacher');
            } else if (value.role == 3) {
              AppRouteService.navigateToStudentDashboard(context);
            }
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 350,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: const Color.fromARGB(255, 227, 227, 227),
                      height: 325,
                    ),
                    Positioned(
                      bottom: 0,
                      child: Image.asset(
                        'assets/avatar/girl.png',
                        width: 180,
                        height: 180,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Log-in",
                        style: TextStyles.rubik23black54A,
                      ),
                      const SizedBox(height: 30),
                      Text(
                        "Email",
                        style: TextStyles.rubik15black54A,
                      ),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: 'Your email id',
                          hintStyle: TextStyles.rubik12black54Aw400,
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          // Basic email format validation
                          if (!RegExp(
                                  r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                              .hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15),
                      Text(
                        "Password",
                        style: TextStyles.rubik15black54A,
                      ),
                      TextFormField(
                        controller: passwordController,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyles.rubik12black54Aw400,
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              // Form is valid, proceed with login
                              BlocProvider.of<LoginBloc>(context).add(
                                LoginEvent.loginRequested(
                                  email: emailController.text,
                                  password: passwordController.text,
                                ),
                              );
                            }
                          },
                          child: const Text("Login"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
