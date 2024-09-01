import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/service/auth/auth_service.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _obscureText = true;
  String? _selectedString;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController classController = TextEditingController();
  final List<String> _options = [
    "d0087d35-9bdc-4d3b-af95-de9b1b910c41",
    "ELdOiMB20ROxsHtu8R74",
  ];
  @override
  Widget build(BuildContext context) {
    final int roleId = ModalRoute.of(context)!.settings.arguments as int;
    print(roleId);
    return Scaffold(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign-up",
                    style: TextStyles.rubik23black54A,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Name",
                    style: TextStyles.rubik15black54A,
                  ),
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: 'Your name',
                      hintStyle: TextStyles.rubik12black54Aw400,
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
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
                  ),
                  const SizedBox(height: 30),
                  DropdownButtonFormField<String>(
                    value: _selectedString,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    hint: Text(
                      'Choose an option',
                      style: TextStyles.rubik12black54Aw400,
                    ),
                    items: _options.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value == "d0087d35-9bdc-4d3b-af95-de9b1b910c41" ? "class4 " : "Class 5",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        _selectedString = newValue;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () async {
                          AuthService(FirebaseAuth.instance)
                              .signUpAndSaveUserData(
                            name: nameController.text,
                            email: emailController.text,
                            password: passwordController.text,
                            classId: _selectedString.toString(),
                            role: roleId,
                          );
                        },
                        child: const Text("Signup")),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
