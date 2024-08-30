// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/UI/Screens/student/assesment/assesment_screen.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/routes/app_route.dart';
import 'package:puppil/core/view_model/assesment/assesment_bloc.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class AssesmentScreen extends StatefulWidget {
  const AssesmentScreen({super.key});

  @override
  State<AssesmentScreen> createState() => _AssesmentScreenState();
}

int page = 0;

class _AssesmentScreenState extends State<AssesmentScreen> {
  @override
  void initState() {
    setState(() {
      page = 0;
    });

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      context.read<AssesmentBloc>().add(AssesmentEvent.fetchAssesment());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        const SizedBox(height: 40),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [],
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
        Text(
          "Latest Assesment Updates",
          style: TextStyles.rubik12greyDA6,
        ),
        SizedBox(height: 20),
        Text(
          "Create List of Assesment by other colleages",
          style: TextStyles.rubik12greyDA6,
        ),
      ],
    );
  }
}
