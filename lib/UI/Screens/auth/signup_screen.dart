import 'package:flutter/material.dart';
import 'package:puppil/core/constant/text_style.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
     final int roleId =
        ModalRoute.of(context)!.settings.arguments as int;
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
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Signup")),
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
