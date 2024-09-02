import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/routes/app_route.dart';
import 'package:puppil/core/service/auth/auth_service.dart';
import 'package:puppil/core/view_model/signup/signup_bloc.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>(); // Add this line for form validation
  bool _obscureText = true;
  String? _selectedString;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

//--------------------------------------
// List of classes using the new model class
  final List<ClassItem> classItems = [
    ClassItem(
        displayName: "Class 4", id: "d0087d35-9bdc-4d3b-af95-de9b1b910c41"),
    ClassItem(displayName: "Class 5", id: "ELdOiMB20ROxsHtu8R74"),
  ];

// Variable to hold the selected class
  ClassItem? _selectedClassItem;

  List<DropdownMenuItem<ClassItem>> _addDividersAfterItems(
      List<ClassItem> items) {
    final List<DropdownMenuItem<ClassItem>> menuItems = [];
    for (final ClassItem item in items) {
      menuItems.addAll(
        [
          DropdownMenuItem<ClassItem>(
            value: item,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                item.displayName, // Display the class name
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),
          // If it's the last item, we will not add a Divider after it.
          if (item != items.last)
            const DropdownMenuItem<ClassItem>(
              enabled: false,
              child: Divider(),
            ),
        ],
      );
    }
    return menuItems;
  }

  List<double> _getCustomItemsHeights() {
    final List<double> itemsHeights = [];
    for (int i = 0; i < (classItems.length * 2) - 1; i++) {
      if (i.isEven) {
        itemsHeights.add(40); // Height for menu items
      }
      // Divider indexes will be the odd indexes
      if (i.isOdd) {
        itemsHeights.add(4); // Height for dividers
      }
    }
    return itemsHeights;
  }

  @override
  Widget build(BuildContext context) {
    final int roleId = ModalRoute.of(context)!.settings.arguments as int;
    print(roleId);

    return BlocListener<SignupBloc, SignupState>(
      listener: (context, state) {
        state.maybeMap(
          loading: (value) {
            print('loading');
          },
          signupSuccess: (value) {
            print('------------------------------------');
            print('${value.role}');
            print('------------------------------------');
            if (value.role == 1) {
              AppRouteService.navigateToAdminDashboard(context);
            } else if (value.role == 2) {
              AppRouteService.navigateToTeacherDashboard(context);
              print('teacher');
            } else if (value.role == 3) {
              AppRouteService.navigateToStudentDashboard(context);
            }
          },
          orElse: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Signup Failed"),
              ),
            );
          },
          signupFailure: (value) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Signup Failed"),
              ),
            );
          },
        );
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: _formKey, // Wrap the column with Form
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
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
                          } else if (value.length < 6) {
                            return 'Password must be at least 6 characters long';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 30),
                      Visibility(
                        visible:
                            roleId != 1, // Adjust visibility condition directly
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 231, 231, 231),
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton2<ClassItem>(
                              isExpanded: true,
                              hint: Text(
                                'Select Your Class',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Theme.of(context).hintColor,
                                ),
                              ),
                              items: _addDividersAfterItems(
                                  classItems), // Use the updated method
                              value: _selectedClassItem,
                              onChanged: (ClassItem? value) {
                                setState(() {
                                  _selectedClassItem =
                                      value; // Update selected class item
                                  _selectedString = value
                                      ?.id; // Use the selected ID for processing
                                });
                              },
                              buttonStyleData: const ButtonStyleData(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                height: 40,
                                width: 140,
                              ),
                              dropdownStyleData: const DropdownStyleData(
                                maxHeight: 200,
                              ),
                              menuItemStyleData: MenuItemStyleData(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                customHeights: _getCustomItemsHeights(),
                              ),
                              iconStyleData: const IconStyleData(
                                openMenuIcon: Icon(Icons.arrow_drop_up),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () async {
                            if (_formKey.currentState?.validate() ?? false) {
                              BlocProvider.of<SignupBloc>(context).add(
                                SignupEvent.signupRequested(
                                  email: emailController.text,
                                  password: passwordController.text,
                                  classId: roleId == 1
                                      ? null
                                      : _selectedString.toString(),
                                  role: roleId,
                                  name: nameController.text,
                                ),
                              );
                            }
                          },
                          child: const Text("Signup"),
                        ),
                      ),
                      SizedBox(height: 40)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ClassItem {
  final String displayName;
  final String id;

  ClassItem({required this.displayName, required this.id});
}
