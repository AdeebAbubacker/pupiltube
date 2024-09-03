// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/routes/app_route.dart';
import 'package:puppil/core/service/teacher/assesment/assesment_service.dart';
import 'package:puppil/core/view_model/assesment/assesment_bloc.dart';
import 'package:puppil/core/view_model/fetch_assesment_by_colleages/fetch_assesment_by_colleages_bloc.dart';
import 'package:intl/intl.dart'; // Import intl for date formatting

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class AssesmentScreen extends StatefulWidget {
  const AssesmentScreen({super.key});

  @override
  State<AssesmentScreen> createState() => _AssesmentScreenState();
}

int page = 0;

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
    setState(() {
      page = 0;
    });

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      context.read<AssesmentBloc>().add(AssesmentEvent.fetchAssesment());
      context
          .read<FetchAssesmentByColleagesBloc>()
          .add(FetchAssesmentByColleagesEvent.fetchAssesmentbycolleages());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        SizedBox(height: 10),
        Text(
          "Assesment",
          style: TextStyles.rubik20black54Aw600,
        ),
        SizedBox(height: 10),
        SizedBox(height: 10),
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 93, 93),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Stack(
            children: [
              Positioned(
                left: 2,
                top: 20,
                child: Icon(
                  Icons.assessment,
                  color: Colors.white,
                  size: 140,
                ),
                // Image.asset(
                //   'assets/assesment/assesment_dashboard.png',
                //   height: 140,
                // ),
              ),
              Positioned(
                right: 5,
                top: 30,
                child: SizedBox(
                  width: 185,
                  child: Column(
                    children: [
                      Wrap(
                        children: [
                          Text(
                            "Create Assesment From now with pupiltube",
                            style: TextStyles.rubik14whiteFFw600,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () {
                            AppRouteService.navigateToassesmentIntro(
                              context,
                            );
                          },
                          child: Text("Create Assesment")),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 40),
        Text(
          "My Assesments",
          style: TextStyles.rubik20black54Aw600,
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: _scrollController,
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  _scrollToItem(0, "All");
                  BlocProvider.of<AssesmentBloc>(context)
                      .add(AssesmentEvent.fetchAssesmentForMyClassAsTeacher());
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
                  _scrollToItem(0, "Ongoing");
                  BlocProvider.of<AssesmentBloc>(context)
                      .add(AssesmentEvent.fetchOngoingAssesmentAsTeacher());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: _selectedButton == "Ongoing"
                      ? Colors.red
                      : const Color.fromARGB(255, 235, 235, 235),
                ),
                child: Text("Ongoing"),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  _scrollToItem(10, "Darft");
                  BlocProvider.of<AssesmentBloc>(context)
                      .add(AssesmentEvent.fetchdraftAssement());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: _selectedButton == "Darft"
                      ? Colors.red
                      : const Color.fromARGB(255, 235, 235, 235),
                ),
                child: Text("Darft"),
              ),
              SizedBox(width: 10),
            ],
          ),
        ),
        const SizedBox(height: 40),
        BlocBuilder<AssesmentBloc, AssesmentState>(
          builder: (context, state) {
            return state.maybeMap(
              fetchAssesment: (value) {
                return ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: value.assesment.length,
                  itemBuilder: (context, index) {
                    final createdAt =
                        parseToDateTime(value.assesment[index].createdAt);
                    return Card(
                      color: const Color.fromARGB(255, 13, 126, 182),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${value.assesment[index].title}',
                                    style: TextStyles.rubik16whiteFF,
                                  ),
                                  Text('${value.assesment[index].description}',
                                      style: TextStyles.rubik14whiteFF),
                                  SizedBox(height: 20),
                                  Text(
                                    // Display formatted date or fallback if createdAt is null
                                    createdAt != null
                                        ? formatDateWithOrdinal(createdAt)
                                        : 'Date not available',
                                    style: TextStyles.rubik10greyDA6,
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.delete,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          AppRouteService
                                              .navigateToAssesmentStatus(
                                            context,
                                            assementId:
                                                '${value.assesment[index].assessmentId}',
                                          );
                                        },
                                        icon: Icon(
                                          Icons.arrow_forward_ios,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              fetchAssesmentForMyClassAsTeacher: (value) {
                return ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: value.assesment.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: const Color.fromARGB(255, 13, 126, 182),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${value.assesment[index].title}',
                                    style: TextStyles.rubik16whiteFF,
                                  ),
                                  Text('${value.assesment[index].description}',
                                      style: TextStyles.rubik14whiteFF),
                                  SizedBox(height: 20),
                                  Text(
                                    '29 August 2024',
                                    style: TextStyle(fontSize: 6),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.edit,
                                          color: const Color.fromARGB(
                                              255, 199, 198, 198),
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.delete,
                                          color: const Color.fromARGB(
                                              255, 199, 198, 198),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          AppRouteService.navigateToAssesmentStatus(
                                              context,
                                              assementId:
                                                  "1YBTaDudA2MWwGrPlwpy8EYip4m1");
                                        },
                                        icon: Icon(Icons.arrow_forward_ios),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              fetchOngoingAssesmentAsTeacher: (value) {
                return ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: value.assesment.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: const Color.fromARGB(255, 13, 126, 182),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${value.assesment[index].title}',
                                    style: TextStyles.rubik16whiteFF,
                                  ),
                                  Text('${value.assesment[index].description}',
                                      style: TextStyles.rubik14whiteFF),
                                  SizedBox(height: 20),
                                  Text(
                                    '29 August 2024',
                                    style: TextStyle(fontSize: 6),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.edit,
                                          color: const Color.fromARGB(
                                              255, 199, 198, 198),
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.delete,
                                          color: const Color.fromARGB(
                                              255, 199, 198, 198),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          AppRouteService.navigateToAssesmentStatus(
                                              context,
                                              assementId:
                                                  "1YBTaDudA2MWwGrPlwpy8EYip4m1");
                                        },
                                        icon: Icon(Icons.arrow_forward_ios),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              fetchdraftAssesment: (value) {
                return ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: value.assesment.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: const Color.fromARGB(255, 13, 126, 182),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${value.assesment[index].title}',
                                    style: TextStyles.rubik16whiteFF,
                                  ),
                                  Text('${value.assesment[index].description}',
                                      style: TextStyles.rubik14whiteFF),
                                  SizedBox(height: 20),
                                  Text(
                                    '29 August 2024',
                                    style: TextStyle(fontSize: 6),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.edit,
                                          color: const Color.fromARGB(
                                              255, 199, 198, 198),
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.delete,
                                          color: const Color.fromARGB(
                                              255, 199, 198, 198),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          AppRouteService.navigateToAssesmentStatus(
                                              context,
                                              assementId:
                                                  "1YBTaDudA2MWwGrPlwpy8EYip4m1");
                                        },
                                        icon: Icon(Icons.arrow_forward_ios),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              orElse: () {
                return SizedBox(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Image.asset('assets/animated/Data Error.gif'));
              },
            );
          },
        ),
        SizedBox(height: 20),
        Text(
          "All Latest Assesment",
          style: TextStyles.rubik12greyDA6,
        ),
        SizedBox(height: 20),
        BlocBuilder<FetchAssesmentByColleagesBloc,
            FetchAssesmentByColleagesState>(
          builder: (context, state) {
            return state.maybeMap(
              fetchAssesmentByColleage: (value) {
                return ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: value.assesment.length,
                  itemBuilder: (context, index) {
                    final startTime = convertTimestamp(
                        value.assesment[index].timeSlot?.startTime);
                    final endTime = convertTimestamp(
                        value.assesment[index].timeSlot?.endTime);
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 245, 245, 247),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.1), // Light shadow color
                                  spreadRadius: 2, // How far the shadow spreads
                                  blurRadius: 5, // How blurred the shadow is
                                  offset: const Offset(
                                      0, 2), // Position of the shadow (x, y)
                                ),
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(9))),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: const BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 235, 233, 233),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(9))),
                                      child: const Icon(
                                        Icons.account_box_rounded,
                                        size: 30,
                                      )),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${value.assesment[index].title}",
                                      style: TextStyles.rubikregular14black3B,
                                    ),
                                    Text(
                                      "${value.assesment[index].description}",
                                      style: TextStyles.rubik10greyDA6,
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  // Check if both times are available, otherwise display "Time not available"
                                  startTime != null && endTime != null
                                      ? '${formatTime(startTime)} to ${formatTime(endTime)}'
                                      : 'Time not available',
                                  style: TextStyles.rubik10greyDA6,
                                ),
                              ],
                            ),
                          )),
                    );
                  },
                );
              },
              orElse: () {
                return ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 19,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 20,
                    );
                  },
                );
              },
            );
          },
        )
      ],
    );
  }

  // Function to format DateTime to "h:mm a" format, e.g., "8:30 pm"
  String formatTime(DateTime? time) {
    if (time == null) {
      return 'Time not available'; // Handle null or invalid times
    }
    return DateFormat('h:mm a').format(time); // Format to desired time format
  }

// Function to convert a Timestamp to DateTime safely
  DateTime? convertTimestamp(Timestamp? timestamp) {
    if (timestamp == null) {
      return null; // Return null if timestamp is missing
    }
    return timestamp.toDate(); // Convert Timestamp to DateTime
  }

  // Function to format DateTime to "d MMMM yyyy" format with ordinal suffix, e.g., "29th August 2024"
  String formatDateWithOrdinal(DateTime date) {
    // Get day and determine the appropriate suffix
    final day = date.day;
    final suffix = getOrdinalSuffix(day);
    // Format date to "d MMMM yyyy" and append the suffix to the day
    return DateFormat('d').format(date) +
        suffix +
        ' ' +
        DateFormat('MMMM yyyy').format(date);
  }

// Function to get ordinal suffix for a given day
  String getOrdinalSuffix(int day) {
    if (day >= 11 && day <= 13) {
      return 'th';
    }
    switch (day % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }

// Convert various types (Timestamp, String) to DateTime safely
  DateTime? parseToDateTime(dynamic input) {
    if (input is Timestamp) {
      return input.toDate(); // Convert from Timestamp to DateTime
    } else if (input is String) {
      try {
        return DateTime.parse(input); // Convert from String to DateTime
      } catch (e) {
        return null; // Return null if parsing fails
      }
    } else if (input is DateTime) {
      return input; // Already a DateTime
    }
    return null; // Return null if input is of unsupported type
  }
}
