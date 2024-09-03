import 'dart:io';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart'; // Ensure this is imported for basename()
import 'package:puppil/UI/Screens/auth/signup_screen.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/routes/app_route.dart';
import 'package:puppil/core/service/auth/auth_service.dart';
import 'package:puppil/core/view_model/login/login_bloc.dart';

class StudentsProfileScreen extends StatefulWidget {
  const StudentsProfileScreen({super.key});

  @override
  State<StudentsProfileScreen> createState() => _StudentsProfileScreenState();
}

class _StudentsProfileScreenState extends State<StudentsProfileScreen> {
  String? selectedString;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController classController = TextEditingController();
  // final List<String> options = [
  //   "d0087d35-9bdc-4d3b-af95-de9b1b910c41",
  //   "ELdOiMB20ROxsHtu8R74",
  // ];

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

  int? _selectedString;
  // List of classes using the new model class
  final List<RoleItem> RoleItems = [
    RoleItem(displayName: "Admin", id: 1),
    RoleItem(displayName: "Teacher", id: 2),
    RoleItem(displayName: "Student", id: 3),
  ];

// Variable to hold the selected class
  RoleItem? _selectedRoleItem;

  List<DropdownMenuItem<RoleItem>> _addDividersAfterItems(
      List<RoleItem> items) {
    final List<DropdownMenuItem<RoleItem>> menuItems = [];
    for (final RoleItem item in items) {
      menuItems.addAll(
        [
          DropdownMenuItem<RoleItem>(
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
            const DropdownMenuItem<RoleItem>(
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
    for (int i = 0; i < (RoleItems.length * 2) - 1; i++) {
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
            SizedBox(height: 30),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
              controller: nameController,
            ),
            const SizedBox(height: 10),
            // DropdownButtonFormField<String>(
            //   value: selectedString,
            //   decoration: const InputDecoration(
            //     enabledBorder: UnderlineInputBorder(
            //       borderSide: BorderSide(color: Colors.grey),
            //     ),
            //     focusedBorder: UnderlineInputBorder(
            //       borderSide: BorderSide(color: Colors.grey),
            //     ),
            //   ),
            //   hint: Text(
            //     'Choose an option',
            //     style: TextStyles.rubik12black54Aw400,
            //   ),
            //   items: options.map((String value) {
            //     return DropdownMenuItem<String>(
            //       value: value,
            //       child: Text(
            //         value == "d0087d35-9bdc-4d3b-af95-de9b1b910c41"
            //             ? "Class 4"
            //             : "Class 5",
            //         overflow: TextOverflow.ellipsis,
            //         maxLines: 1,
            //       ),
            //     );
            //   }).toList(),
            //   onChanged: (newValue) {
            //     setState(() {
            //       selectedString = newValue;
            //     });
            //   },
            // ),

            Container(
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
                child: DropdownButton2<RoleItem>(
                  isExpanded: true,
                  hint: Text(
                    'Select Your Class',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  items: _addDividersAfterItems(
                      RoleItems), // Use the updated method
                  value: _selectedRoleItem,
                  onChanged: (RoleItem? value) {
                    setState(() {
                      _selectedRoleItem = value; // Update selected class item
                      _selectedString =
                          value?.id; // Use the selected ID for processing
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
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    customHeights: _getCustomItemsHeights(),
                  ),
                  iconStyleData: const IconStyleData(
                    openMenuIcon: Icon(Icons.arrow_drop_up),
                  ),
                ),
              ),
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

class RoleItem {
  final String displayName;
  final int id;

  RoleItem({required this.displayName, required this.id});
}
