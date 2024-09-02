import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart'; // Ensure this is imported for basename()
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/routes/app_route.dart';
import 'package:puppil/core/service/auth/auth_service.dart';
import 'package:puppil/core/view_model/login/login_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String? selectedString;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController classController = TextEditingController();
  final List<String> options = [
    "d0087d35-9bdc-4d3b-af95-de9b1b910c41",
    "ELdOiMB20ROxsHtu8R74",
  ];

  File? _selectedImage;
  String? filePath;
  String? fileName;

  // Function to open the file picker and validate the selected file
  void _openFilePicker(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (result != null) {
      String? selectedFilePath = result.files.single.path;
      String? selectedFileName = basename(selectedFilePath!);

      if (!_isValidImageFile(selectedFileName)) {
      print('ssssssssssssssssssssssss');
        return;
      }

      setState(() {
        filePath = selectedFilePath;
        fileName = selectedFileName;
        _selectedImage = File(selectedFilePath); // Set the selected file
      });

      print("Selected file: $fileName");

      // Update the image in the service
      await AuthService(FirebaseAuth.instance)
          .updateProfile(newImgUrl: _selectedImage!.path);
    }
  }

  // Helper method to validate image file extensions
  bool _isValidImageFile(String fileName) {
    final validExtensions = ['png', 'jpg', 'jpeg'];
    final fileExtension = fileName.split('.').last.toLowerCase();
    return validExtensions.contains(fileExtension);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state.maybeMap(
          logoutSuccess: (value) {
            AppRouteService.navigateToIntroScreenCleared(context);
          },
          logoutFailure: (value) {
            print('Logout failed');
          },
          orElse: () {},
        );
      },
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: _selectedImage != null
                        ? FileImage(_selectedImage!)
                        : null,
                    child: _selectedImage == null
                        ? Icon(Icons.person, size: 40)
                        : null,
                  ),
                  Positioned(
                    left: 55,
                    top: 50,
                    child: IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () => _openFilePicker(context),
                    ),
                  ),
                ],
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
              controller: nameController,
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: selectedString,
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
              items: options.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value == "d0087d35-9bdc-4d3b-af95-de9b1b910c41"
                        ? "Class 4"
                        : "Class 5",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  selectedString = newValue;
                });
              },
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  AuthService(FirebaseAuth.instance).updateProfile(
                    newName: nameController.text,
                    newRole: 2, // Change this as per your logic
                    newImgUrl: _selectedImage?.path ?? '',
                  );
                },
                child: const Text("Update"),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  BlocProvider.of<LoginBloc>(context)
                      .add(const LoginEvent.logoutRequested());
                },
                child: const Text("Logout"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
