// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/core/models/question_bank/question_bank_model.dart';
import 'package:puppil/core/service/teacher/question_bank/question_bank_service.dart';
import 'package:puppil/core/view_model/question_bank/question_bank_bloc.dart';

class QuestionBankPopup extends StatefulWidget {
  const QuestionBankPopup({super.key});

  @override
  State<QuestionBankPopup> createState() => _QuestionBankPopupState();
}

class _QuestionBankPopupState extends State<QuestionBankPopup> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return Dialog(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 500,
                    child: PopupContent(),
                  ),
                );
              },
            );
          },
          child: Text("Open Popup"),
        ),
      ),
    );
  }
}

class PopupContent extends StatefulWidget {
  @override
  _PopupContentState createState() => _PopupContentState();
}

class _PopupContentState extends State<PopupContent> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  QuestionBank? _data; // Default data to pass to the next page

  void _navigateToNextPage(QuestionBank dataToPass) {
    setState(() {
      _currentPage += 1;
      _data = dataToPass;
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  void _navigateToPreviousPage() {
    setState(() {
      _currentPage -= 1;
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              // First Page
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Question Bank",
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Closes the dialog
                          },
                          icon: Icon(Icons.close))
                    ],
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: BlocBuilder<QuestionBankBloc, QuestionBankState>(
                      builder: (context, state) {
                        return state.maybeMap(
                          fetchAllQuestionBank: (value) {
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: value.assesment.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 249, 248, 248),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black
                                              .withOpacity(0.1), // Shadow color
                                          spreadRadius:
                                              1, // How much the shadow spreads
                                          blurRadius:
                                              1, // Softness of the shadow
                                          offset: Offset(
                                              1, 1), // Position of the shadow
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '${value.assesment[index].title}',
                                                style: TextStyle(fontSize: 5),
                                              ),
                                              Text(
                                                'By ${value.assesment[index].title}',
                                                style: TextStyle(fontSize: 5),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          IconButton(
                                              onPressed: () {
                                                _navigateToNextPage(
                                                    value.assesment[index]);
                                              },
                                              icon: Icon(
                                                Icons.arrow_forward_ios,
                                                color: Colors.grey,
                                                size: 15,
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          loading: (value) {
                            return Center(child: CircularProgressIndicator());
                          },
                          noInternet: (value) {
                            return Center(
                                child: Text('No Internet Connection'));
                          },
                          orElse: () {
                            return Center(child: Text('Something went wrong'));
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
              // Second Page
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: _navigateToPreviousPage,
                          icon: Icon(Icons.arrow_back_ios)),
                      Spacer(),
                      Text(
                        "Question Bank by ${_data?.teacherName}",
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Closes the dialog
                          },
                          icon: Icon(Icons.close))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("select all"),
                      Checkbox(value: true, onChanged: (_) {})
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: _data?.questions.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 249, 248, 248),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.1), // Shadow color
                                  spreadRadius:
                                      1, // How much the shadow spreads
                                  blurRadius: 1, // Softness of the shadow
                                  offset:
                                      Offset(1, 1), // Position of the shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${_data?.questions[index].question}',
                                        style: TextStyle(fontSize: 5),
                                      ),
                                      Text(
                                        '${_data?.teacherName}',
                                        style: TextStyle(fontSize: 5),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Checkbox(value: true, onChanged: (_) {})
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(onPressed: () {}, child: Text("Import"))
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
