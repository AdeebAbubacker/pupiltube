// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:puppil/core/constant/text_style.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/core/helper/token/get_uid.dart';
import 'package:puppil/core/routes/app_route.dart';
import 'package:puppil/core/service/student/student_submission/student_submission_service.dart';
import 'package:puppil/core/view_model/assesment/assesment_bloc.dart';

class AssesmentScreen extends StatefulWidget {
  const AssesmentScreen({super.key});

  @override
  State<AssesmentScreen> createState() => _AssesmentScreenState();
}

class _AssesmentScreenState extends State<AssesmentScreen> {
  final ScrollController _scrollController = ScrollController();
  String _selectedButton = "All"; // Default selected button

  void _scrollToItem(double position, String buttonLabel) {
    setState(() {
      _selectedButton = buttonLabel;
    });
    _scrollController.animateTo(
      position,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      String? uid = await getUserUID();
      if (uid != null) {
        BlocProvider.of<AssesmentBloc>(context).add(
          AssesmentEvent.fetchAssesmentForMyClassEvent(id: uid),
        );
      } else {
        print("No user is signed in.");
        // Handle no user case if needed
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 40),
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 93, 93),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Stack(
            children: [
              Positioned(
                right: 10,
                top: 30,
                child: Image.asset(
                  'assets/assesment/assesment_dashboard.png',
                  height: 140,
                ),
              ),
              Positioned(
                  left: 10,
                  top: 40,
                  child: SizedBox(
                    width: 180,
                    child: Wrap(
                      children: [
                        Text(
                          "Start Your Assesment Journey with Pupil Tube",
                          style: TextStyles.rubik14whiteFFw600,
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(height: 20),
        Text(
          "My Assesment",
          style: TextStyles.rubik14black54A,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: _scrollController,
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  _scrollToItem(0, "All");
                  BlocProvider.of<AssesmentBloc>(context).add(
                      AssesmentEvent.fetchAssesmentForMyClassEvent(
                          id: "1YBTaDudA2MWwGrPlwpy8EYip4m1"));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: _selectedButton == "All"
                      ? Colors.red
                      : const Color.fromARGB(255, 235, 235, 235),
                ),
                child: Text("All"),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  _scrollToItem(10, "Todo");
                  BlocProvider.of<AssesmentBloc>(context).add(
                      AssesmentEvent.fetchAssesmentToDo(
                          id: "1YBTaDudA2MWwGrPlwpy8EYip4m1"));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: _selectedButton == "Todo"
                      ? Colors.red
                      : const Color.fromARGB(255, 235, 235, 235),
                ),
                child: Text("Todo"),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  _scrollToItem(40, "Overdue");
                  BlocProvider.of<AssesmentBloc>(context).add(
                      AssesmentEvent.fetchAssesmentOverDue(
                          id: "1YBTaDudA2MWwGrPlwpy8EYip4m1"));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: _selectedButton == "Overdue"
                      ? Colors.red
                      : const Color.fromARGB(255, 235, 235, 235),
                ),
                child: Text("Overdue"),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  _scrollToItem(50, "Completed");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: _selectedButton == "Completed"
                      ? const Color.fromARGB(255, 252, 112, 102)
                      : const Color.fromARGB(255, 235, 235, 235),
                ),
                child: Text("Completed"),
              ),
            ],
          ),
        ),
        Center(
          child: BlocBuilder<AssesmentBloc, AssesmentState>(
            builder: (context, state) {
              return state.maybeMap(loading: (value) {
                return Text("Loading");
              }, fetchAssesmentOverDue: (value) {
                return ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: value.assesment.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              color: const Color.fromARGB(255, 199, 199, 199)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text("${value.assesment[index].description}"),
                                ElevatedButton(
                                    onPressed: () {
                                      AppRouteService.navigateTotest2(context,
                                          assementmodel:
                                              value.assesment[index]);
                                    },
                                    child: Text("data"))
                              ],
                            ),
                          )),
                    );
                  },
                );
              }, fetchAssesmentForMyClass: (value) {
                return ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: value.assesment.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              color: const Color.fromARGB(255, 199, 199, 199)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text("${value.assesment[index].description}"),
                                Spacer(),
                                ElevatedButton(
                                    onPressed: () {
                                      AppRouteService.navigateTotest2(context,
                                          assementmodel:
                                              value.assesment[index]);
                                    },
                                    child: Text("data"))
                              ],
                            ),
                          )),
                    );
                  },
                );
              }, fetchAssesmentTodo: (value) {
                return ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: value.assesment.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              color: const Color.fromARGB(255, 199, 199, 199)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text("${value.assesment[index].description}"),
                                ElevatedButton(
                                    onPressed: () {
                                      AppRouteService.navigateTotest2(context,
                                          assementmodel:
                                              value.assesment[index]);
                                    },
                                    child: Text("data"))
                              ],
                            ),
                          )),
                    );
                  },
                );
              }, orElse: () {
                return Text('data');
              });
            },
          ),
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
