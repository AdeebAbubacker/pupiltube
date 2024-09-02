import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:puppil/UI/Widget/events_card.dart';
import 'package:puppil/core/service/student/events/events_servcie.dart';
import 'package:puppil/core/view_model/students_event/students_events_bloc.dart';

class EventsSection extends StatefulWidget {
  const EventsSection({super.key});

  @override
  State<EventsSection> createState() => _EventsSectionState();
}

class _EventsSectionState extends State<EventsSection> {
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      BlocProvider.of<StudentsEventsBloc>(context)
          .add(const StudentsEventsEvent.fetchStudentsEvent());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocBuilder<StudentsEventsBloc, StudentsEventsState>(
          builder: (context, state) {
            return state.maybeMap(
              fetchStudentsEvent: (value) {
                return ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: value.studentTosubmit.length,
                  itemBuilder: (context, index) {
                    // Convert string to DateTime
                    // Convert string to DateTime
                    DateTime scheduledDateTime = DateTime.parse(
                        value.studentTosubmit[index].scheduledDate);
                    DateTime startDateTime =
                        DateTime.parse(value.studentTosubmit[index].startTime);
                    DateTime endDateTime =
                        DateTime.parse(value.studentTosubmit[index].endTime);

// Format dates and times
                    String formattedScheduledDate =
                        DateFormat('d MMMM yyyy').format(scheduledDateTime);
                    String formattedStartTime = DateFormat('h a').format(
                        startDateTime); // 'h a' for 12-hour format with AM/PM
                    String formattedEndTime =
                        DateFormat('h a').format(endDateTime);
                    return EventCard(
                      eventId: value.studentTosubmit[index].eventId,
                      eventTitle: value.studentTosubmit[index].eventId,
                      description: value.studentTosubmit[index].eventId,
                      eventType: value.studentTosubmit[index].eventType,
                      location: value.studentTosubmit[index].location,
                      organizer: value.studentTosubmit[index].organizer,
                      scheduledDate: formattedScheduledDate,
                      startTime: formattedStartTime,
                      endTime: formattedEndTime,
                    );
                  },
                );
              },
              orElse: () {
                return const Text('data');
              },
            );
          },
        )
      ],
    ));
  }
}

// import 'package:flutter/material.dart';



// class DemoScreen extends StatelessWidget {
//   const DemoScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Column(
//         children: [
//           EventCard(
//             eventId: 'event001',
//             eventTitle: 'GK Quiz',
//             description: 'Test your general knowledge with a fun quiz!',
//             eventType: 'Quiz',
//             location: 'Room 101',
//             organizer: 'Mr. Smith',
//             scheduledDate: '2024-09-10',
//             startTime: '10:00 AM',
//             endTime: '11:00 AM',
//           ),
//         ],
//       ),
//     );
//   }
// }
