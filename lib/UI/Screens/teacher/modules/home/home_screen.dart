// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/UI/Screens/teacher/modules/home/widget/video_player.dart';
import 'package:puppil/UI/Widget/homeappbar.dart';
import 'package:puppil/core/constant/text_style.dart';
import 'package:puppil/core/routes/app_route.dart';
import 'package:puppil/core/view_model/GetMyClassCourses/get_my_class_courses_bloc.dart';

// Main screen with the video thumbnail
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      BlocProvider.of<GetMyClassCoursesBloc>(context)
          .add(GetMyClassCoursesEvent.fetchGMyClassCourses());
    });
    // Video ID for Gangnam Style
    String videoId = 'LMOTSUpR3sQ';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeAppBar(),
        SizedBox(height: 50),
        Container(
          height: 160,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 93, 93),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Stack(
            children: [
              Positioned(
                left: 2,
                top: 20,
                child: Image.asset(
                  'assets/icon/welcome.png',
                  height: 110,
                ),
              ),
              Positioned(
                right: 5,
                top: 30,
                child: SizedBox(
                  width: 195,
                  child: Column(
                    children: [
                      Wrap(
                        children: [
                          Text(
                            "Welcome to pupil world, start creating assements and question banks",
                            style: TextStyles.rubik14whiteFFw600,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30),
        Text(
          "My Courses",
          style: TextStyles.rubik16grey367,
        ),
        BlocBuilder<GetMyClassCoursesBloc, GetMyClassCoursesState>(
          builder: (context, state) {
            return state.maybeMap(
              fetchMyClassCourses: (value) {
                return GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: value.rolemodel.data?.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 2,
                    mainAxisSpacing: 9,
                    crossAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Navigate to the player screen when the thumbnail is clicked
                        AppRouteService.navigateTovideoPlayScreen(context,
                            data: value.rolemodel.data![index]);
                      },
                      child: SizedBox(
                        height: 100,
                        child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: NetworkImage(
                                    // YouTube thumbnail URL format
                                    'https://img.youtube.com/vi/${value.rolemodel.data?[index].videoUrlId}/0.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(9)),
                              ),
                            ),
                            // Top strip overlay
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              height:
                                  14, // Adjust height to cover the black strip
                              child: Container(
                                color: Color(0XFFFCFCFF),
                              ),
                            ),
                            // Bottom strip overlay
                            Positioned(
                              top: 94,
                              left: 0,
                              right: 0,
                              height: 66, // Adjust height as needed
                              child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(9),
                                    bottomLeft: Radius.circular(9),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(
                                          0.1), // Light shadow color
                                      spreadRadius:
                                          2, // How far the shadow spreads
                                      blurRadius:
                                          5, // How blurred the shadow is
                                      offset: const Offset(0,
                                          2), // Position of the shadow (x, y)
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "${value.rolemodel.data?[index].title}",
                                        style: TextStyles.rubik10greyDA6,
                                      ),
                                      Text(
                                        "${value.rolemodel.data?[index].subtitle}",
                                        style: TextStyles.rubik10greyDA6,
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
                  },
                );
              },
              orElse: () {
                return GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 2,
                    mainAxisSpacing: 9,
                    crossAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Navigate to the player screen when the thumbnail is clicked
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoPlayer(),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 100,
                        child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 120,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: NetworkImage(
                                    // YouTube thumbnail URL format
                                    'https://img.youtube.com/vi/$videoId/0.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(9)),
                              ),
                            ),
                            // Top strip overlay
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              height:
                                  14, // Adjust height to cover the black strip
                              child: Container(
                                color: Color(0XFFFCFCFF),
                              ),
                            ),
                            // Bottom strip overlay
                            Positioned(
                              top: 94,
                              left: 0,
                              right: 0,
                              height: 66, // Adjust height as needed
                              child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(9),
                                    bottomLeft: Radius.circular(9),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(
                                          0.1), // Light shadow color
                                      spreadRadius:
                                          2, // How far the shadow spreads
                                      blurRadius:
                                          5, // How blurred the shadow is
                                      offset: const Offset(0,
                                          2), // Position of the shadow (x, y)
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Physics (Chapter -1)",
                                        style: TextStyles.rubik12black54Aw400,
                                      ),
                                      Text(
                                        "Theory of Relativity",
                                        style: TextStyles.rubik13greyDA6,
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
                  },
                );
              },
            );
            // return GridView.builder(
            //   physics: const NeverScrollableScrollPhysics(),
            //   shrinkWrap: true,
            //   itemCount: 10,
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2,
            //     childAspectRatio: 2 / 2,
            //     mainAxisSpacing: 9,
            //     crossAxisSpacing: 5,
            //   ),
            //   itemBuilder: (context, index) {
            //     return GestureDetector(
            //       onTap: () {
            //         // Navigate to the player screen when the thumbnail is clicked
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => VideoPlayer(videoId: videoId),
            //           ),
            //         );
            //       },
            //       child: SizedBox(
            //         height: 100,
            //         child: Stack(
            //           children: [
            //             Container(
            //               width: MediaQuery.of(context).size.width,
            //               height: 120,
            //               decoration: BoxDecoration(
            //                 color: Colors.white,
            //                 image: DecorationImage(
            //                   image: NetworkImage(
            //                     // YouTube thumbnail URL format
            //                     'https://img.youtube.com/vi/$videoId/0.jpg',
            //                   ),
            //                   fit: BoxFit.cover,
            //                 ),
            //                 borderRadius: BorderRadius.all(Radius.circular(9)),
            //               ),
            //             ),
            //             // Top strip overlay
            //             Positioned(
            //               top: 0,
            //               left: 0,
            //               right: 0,
            //               height: 14, // Adjust height to cover the black strip
            //               child: Container(
            //                 color: Color(0XFFFCFCFF),
            //               ),
            //             ),
            //             // Bottom strip overlay
            //             Positioned(
            //               top: 94,
            //               left: 0,
            //               right: 0,
            //               height: 66, // Adjust height as needed
            //               child: Container(
            //                 decoration: BoxDecoration(
            //                   color: const Color.fromARGB(255, 255, 255, 255),
            //                   borderRadius: BorderRadius.only(
            //                     bottomRight: Radius.circular(9),
            //                     bottomLeft: Radius.circular(9),
            //                   ),
            //                   boxShadow: [
            //                     BoxShadow(
            //                       color: Colors.black
            //                           .withOpacity(0.1), // Light shadow color
            //                       spreadRadius: 2, // How far the shadow spreads
            //                       blurRadius: 5, // How blurred the shadow is
            //                       offset: const Offset(
            //                           0, 2), // Position of the shadow (x, y)
            //                     ),
            //                   ],
            //                 ),
            //                 child: Center(
            //                   child: Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       SizedBox(
            //                         height: 10,
            //                       ),
            //                       Text(
            //                         "Physics (Chapter -1)",
            //                         style: TextStyles.rubik12black54Aw400,
            //                       ),
            //                       Text(
            //                         "Theory of Relativity",
            //                         style: TextStyles.rubik13greyDA6,
            //                       ),
            //                     ],
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     );
            //   },
            // );
          },
        ),
      ],
    );
  }
}
