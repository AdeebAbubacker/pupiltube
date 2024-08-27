// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/routes/app_route.dart';
import 'package:puppil/core/service/teacher/assesment/assesment_service.dart';
import 'package:puppil/core/view_model/assesment/assesment_bloc.dart';

class AssesmentIntroScreen extends StatelessWidget {
  AssesmentIntroScreen({super.key});
  TextEditingController titleController = TextEditingController();
  TextEditingController linktocourseController = TextEditingController();
  TextEditingController timelimitController = TextEditingController();
  TextEditingController instructionsController = TextEditingController();
  TextEditingController classController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return BlocListener<AssesmentBloc, AssesmentState>(
      listener: (context, state) {
        state.maybeMap(
          createdAssesment: (value) {
  
            // Navigate to home screen or update UI
            AppRouteService.navigateToassesmentCreation(context);
          },
          error: (value) {
      
            // Show error message
          },
          noInternet: (value) {
    
            // Show no internet message
          },
          loading: (_) {
    
          },
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
                            TextFormField(
                              controller: classController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(9),
                                    ),
                                  ),
                                  hintText: 'Select Class'),
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
