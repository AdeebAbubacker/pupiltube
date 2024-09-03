// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/UI/Screens/auth/signup_screen.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/routes/app_route.dart';
import 'package:puppil/core/view_model/assesment/assesment_bloc.dart';

class AssesmentIntroScreen extends StatefulWidget {
  AssesmentIntroScreen({
    super.key,
  });

  @override
  State<AssesmentIntroScreen> createState() => _AssesmentIntroScreenState();
}

class _AssesmentIntroScreenState extends State<AssesmentIntroScreen> {
  TextEditingController titleController = TextEditingController();

  TextEditingController linktocourseController = TextEditingController();

  TextEditingController timelimitController = TextEditingController();

  TextEditingController instructionsController = TextEditingController();

  TextEditingController classController = TextEditingController();
  String? _selectedString;
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
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return BlocListener<AssesmentBloc, AssesmentState>(
      listener: (context, state) {
        state.maybeMap(
          createdAssesment: (value) {
            // Navigate to home screen or update UI
            print('----------------------');
            print(value.assesment.assessmentId);
            print('----------------------');
            AppRouteService.navigateToAssesmentStep2Creation(context,
                model: ModelToAssesmentCreation(
                  assementId: value.assesment.assessmentId.toString(),
                  title: value.assesment.title.toString(),
                  description: value.assesment.description.toString(),
                ));
          },
          error: (value) {
            // Show error message
          },
          noInternet: (value) {
            // Show no internet message
          },
          loading: (_) {},
          orElse: () {},
        );
      },
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              width: screenWidth,
              height: screenHeight * 0.4,
              child: Container(
                color: const Color.fromARGB(255, 248, 85, 73),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: screenHeight * 0.05),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            )),
                        Text(
                          "Assesment",
                          style: TextStyles.rubik18whiteFF,
                        )
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.05),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Create your Assesment',
                            style: TextStyles.rubik16whiteFF,
                          ),
                          Text(
                            'Nikhil Sir',
                            style: TextStyles.rubik16whiteFF,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              width: screenWidth,
              height: screenHeight * 0.75,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 12),
                      Center(
                        child: Container(
                          height: 4,
                          width: 60,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            TextFormField(
                              controller: titleController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(9),
                                  ),
                                ),
                                hintText: 'Title',
                              ),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              controller: linktocourseController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(9),
                                    ),
                                  ),
                                  hintText: 'Link to Course'),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              controller: timelimitController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(9),
                                    ),
                                  ),
                                  hintText: 'Time Limit'),
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              controller: instructionsController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(9),
                                    ),
                                  ),
                                  hintText: 'Instructions'),
                            ),
                            SizedBox(height: 10),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    height: 40,
                                    width: 140,
                                  ),
                                  dropdownStyleData: const DropdownStyleData(
                                    maxHeight: 200,
                                  ),
                                  menuItemStyleData: MenuItemStyleData(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    customHeights: _getCustomItemsHeights(),
                                  ),
                                  iconStyleData: const IconStyleData(
                                    openMenuIcon: Icon(Icons.arrow_drop_up),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            BlocBuilder<AssesmentBloc, AssesmentState>(
                              builder: (context, state) {
                                final isLoading = state.maybeMap(
                                  loading: (_) =>
                                      true, // Return true if the state is `loading`
                                  orElse: () =>
                                      false, // Return false for all other states
                                );
                                return SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: isLoading
                                        ? null
                                        : () async {
                                            BlocProvider.of<AssesmentBloc>(
                                                    context)
                                                .add(
                                              AssesmentEvent.createAssessment(
                                                  title: titleController.text),
                                            );
                                          },
                                    child: Text("Get Started"),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
