import 'package:flutter/material.dart';
import 'package:puppil/core/models/assesment/assesment_model.dart';
import 'package:puppil/core/service/student/student_submission/student_submission_service.dart';

class TestScreen2 extends StatefulWidget {
  const TestScreen2({super.key});

  @override
  _TestScreen2State createState() => _TestScreen2State();
}

// class _TestScreen2State extends State<TestScreen2> {
//   List<String?> selectedAnswers = [];
//   List<String?> selectedquestId = [];
//   List<bool?> isCorrect = [];
//   final StudentSubmissionService _studentSubmissionService =
//       StudentSubmissionService();

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     final AssessmentModel? assessmentModel =
//         ModalRoute.of(context)?.settings.arguments as AssessmentModel?;
//     if (assessmentModel != null) {
//       if (assessmentModel.questions != null &&
//           assessmentModel.questions!.isNotEmpty) {
//         selectedAnswers =
//             List<String?>.filled(assessmentModel.questions!.length, null);
//         selectedquestId =
//             List<String?>.filled(assessmentModel.questions!.length, null);
//         isCorrect = List<bool?>.filled(assessmentModel.questions!.length, null);

//         for (int i = 0; i < assessmentModel.questions!.length; i++) {
//           selectedquestId[i] = assessmentModel.questions![i].questionId;
//         }
//       }
//     }
//   }

//   void submitAnswers() async {
//     final AssessmentModel? assessmentModel =
//         ModalRoute.of(context)?.settings.arguments as AssessmentModel?;

//     if (assessmentModel == null) return;

//     final answers = selectedquestId.asMap().entries.map((entry) {
//       final index = entry.key;
//       final questionId = entry.value;
//       final answer = selectedAnswers[index];
//       final isCorrectAnswer = isCorrect[index];

//       return {
//         'questionId': questionId,
//         'answer': answer,
//         'isCorrect': isCorrectAnswer,
//       };
//     }).toList();

//     await _studentSubmissionService.submitStudentSubmission(
//       studentId:
//           '2b2de06c-7f3f-4b33-8a52-8687ea69899d', // Replace with actual student ID
//       assessmentId: "2dae8f20-3254-40ab-9624-70779d3b5947",
//       answers: answers,
//       score: calculateScore(),
//       status: 'completed', // Change to 'completed' or other status as needed
//     );

//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Answers submitted successfully')),
//     );

//     Navigator.pop(context); // Navigate back or perform another action
//   }

//   int calculateScore() {
//     // Calculate the number of correct answers
//     return isCorrect.where((correct) => correct == true).length;
//   }

//   void updateAnswer(String questionId, String answer, bool isCorrectAnswer) {
//     _studentSubmissionService.updateOrCreateAnswer(
//       studentId:
//           '2b2de06c-7f3f-4b33-8a52-8687ea69899d', // Replace with actual student ID
//       assessmentId: "2dae8f20-3254-40ab-9624-70779d3b5947",
//       questionId: questionId,
//       answer: answer,
//       isCorrect: isCorrectAnswer,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final AssessmentModel assessmentModel =
//         ModalRoute.of(context)!.settings.arguments as AssessmentModel;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(assessmentModel.title ?? "Assessment"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           children: [
//             Expanded(
//               child: ListView.builder(
//                 itemCount: assessmentModel.questions?.length ?? 0,
//                 itemBuilder: (context, index) {
//                   final question = assessmentModel.questions![index];
//                   final questionId = question.questionId;

//                   return Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 8.0),
//                     child: Card(
//                       elevation: 4,
//                       child: Padding(
//                         padding: const EdgeInsets.all(12.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Q${index + 1}: ${question.question}",
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(height: 10),
//                             Column(
//                               children: List.generate(question.options.length,
//                                   (optionIndex) {
//                                 return Row(
//                                   children: [
//                                     Radio<String>(
//                                       value: question.options[optionIndex],
//                                       groupValue: selectedAnswers[
//                                           selectedquestId.indexOf(questionId)],
//                                       onChanged: (value) {
//                                         final isCorrectAnswer =
//                                             question.options[optionIndex] ==
//                                                 (question.answer ?? '');

//                                         setState(() {
//                                           final questionIndex = selectedquestId
//                                               .indexOf(questionId);
//                                           if (questionIndex != -1) {
//                                             // Update existing entry
//                                             selectedAnswers[questionIndex] =
//                                                 value;
//                                             isCorrect[questionIndex] =
//                                                 isCorrectAnswer;
//                                           } else {
//                                             // Create new entry
//                                             selectedAnswers.add(value);
//                                             selectedquestId.add(questionId);
//                                             isCorrect.add(isCorrectAnswer);
//                                           }
//                                           calculateScore();
//                                         });

//                                         // Update or create answer in Firestore
//                                         updateAnswer(questionId, value!,
//                                             isCorrectAnswer);
//                                       },
//                                     ),
//                                     SizedBox(width: 8),
//                                     Text(question.options[optionIndex]),
//                                   ],
//                                 );
//                               }),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             ElevatedButton(
//               onPressed: submitAnswers,
//               child: Text('Submit Answers'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class _TestScreen2State extends State<TestScreen2> {
  List<String?> selectedAnswers = [];
  List<String?> selectedquestId = [];
  List<bool?> isCorrect = [];
  final StudentSubmissionService _studentSubmissionService =
      StudentSubmissionService();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final AssessmentModel? assessmentModel =
        ModalRoute.of(context)?.settings.arguments as AssessmentModel?;
    if (assessmentModel != null) {
      if (assessmentModel.questions != null &&
          assessmentModel.questions!.isNotEmpty) {
        selectedAnswers =
            List<String?>.filled(assessmentModel.questions!.length, null);
        selectedquestId =
            List<String?>.filled(assessmentModel.questions!.length, null);
        isCorrect = List<bool?>.filled(assessmentModel.questions!.length, null);

        for (int i = 0; i < assessmentModel.questions!.length; i++) {
          selectedquestId[i] = assessmentModel.questions![i].questionId;
        }
      }
    }
  }

  void submitAnswers() async {
    final AssessmentModel? assessmentModel =
        ModalRoute.of(context)?.settings.arguments as AssessmentModel?;

    if (assessmentModel == null) return;

    final answers = selectedquestId.asMap().entries.map((entry) {
      final index = entry.key;
      final questionId = entry.value;
      final answer = selectedAnswers[index];
      final isCorrectAnswer = isCorrect[index];

      return {
        'questionId': questionId,
        'answer': answer,
        'isCorrect': isCorrectAnswer,
      };
    }).toList();

    await _studentSubmissionService.submitStudentSubmission(
      studentId:
          '2b2de06c-7f3f-4b33-8a52-8687ea69899d', // Replace with actual student ID
      assessmentId: "2dae8f20-3254-40ab-9624-70779d3b5947",
      answers: answers,
      score: calculateScore(),
      status: 'completed', // Change to 'completed' or other status as needed
    );

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Answers submitted successfully')),
    );

    Navigator.pop(context); // Navigate back or perform another action
  }

  int calculateScore() {
    // Calculate the number of correct answers
    return isCorrect.where((correct) => correct == true).length;
  }

  void updateAnswer(String questionId, String answer, bool isCorrectAnswer) {
    _studentSubmissionService.updateOrCreateAnswer(
      studentId: '2b2de06c-7f3f-4b33-8a52-8687ea69899d',
      assessmentId: "2dae8f20-3254-40ab-9624-70779d3b5947",
      questionId: questionId,
      answer: answer,
      isCorrect: isCorrectAnswer,
      score: calculateScore(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final AssessmentModel assessmentModel =
        ModalRoute.of(context)!.settings.arguments as AssessmentModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(assessmentModel.title ?? "Assessment"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: assessmentModel.questions?.length ?? 0,
                itemBuilder: (context, index) {
                  final question = assessmentModel.questions![index];
                  final questionId = question.questionId;

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Q${index + 1}: ${question.question}",
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Column(
                              children: List.generate(question.options.length,
                                  (optionIndex) {
                                return Row(
                                  children: [
                                    Radio<String>(
                                      value: question.options[optionIndex],
                                      groupValue: selectedAnswers[
                                          selectedquestId.indexOf(questionId)],
                                      onChanged: (value) {
                                        final isCorrectAnswer =
                                            question.options[optionIndex] ==
                                                (question.answer ?? '');

                                        setState(() {
                                          final questionIndex = selectedquestId
                                              .indexOf(questionId);
                                          if (questionIndex != -1) {
                                            // Update existing entry
                                            selectedAnswers[questionIndex] =
                                                value;
                                            isCorrect[questionIndex] =
                                                isCorrectAnswer;
                                          } else {
                                            // Create new entry
                                            selectedAnswers.add(value);
                                            selectedquestId.add(questionId);
                                            isCorrect.add(isCorrectAnswer);
                                          }
                                        });

                                        // Update or create answer in Firestore
                                        updateAnswer(questionId, value!,
                                            isCorrectAnswer);
                                      },
                                    ),
                                    const SizedBox(width: 8),
                                    Text(question.options[optionIndex]),
                                  ],
                                );
                              }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: submitAnswers,
              child: const Text('Submit Answers'),
            ),
            const SizedBox(height: 16),
            Text(
              'Score: ${calculateScore()}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}



// class _TestScreen2State extends State<TestScreen2> {
//   List<String?> selectedAnswers = [];
//   List<String?> selectedquestId = [];
//   List<bool?> isCorrect = [];
//   final StudentSubmissionService _studentSubmissionService =
//       StudentSubmissionService();

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     final AssessmentModel? assessmentModel =
//         ModalRoute.of(context)?.settings.arguments as AssessmentModel?;
//     if (assessmentModel != null) {
//       if (assessmentModel.questions != null &&
//           assessmentModel.questions!.isNotEmpty) {
//         selectedAnswers =
//             List<String?>.filled(assessmentModel.questions!.length, null);
//         selectedquestId =
//             List<String?>.filled(assessmentModel.questions!.length, null);
//         isCorrect = List<bool?>.filled(assessmentModel.questions!.length, null);

//         for (int i = 0; i < assessmentModel.questions!.length; i++) {
//           selectedquestId[i] = assessmentModel.questions![i].questionId;
//         }
//       }
//     }
//   }

//   void submitAnswers() async {
//     final AssessmentModel? assessmentModel =
//         ModalRoute.of(context)?.settings.arguments as AssessmentModel?;

//     if (assessmentModel == null) return;

//     final answers = selectedquestId.asMap().entries.map((entry) {
//       final index = entry.key;
//       final questionId = entry.value;
//       final answer = selectedAnswers[index];
//       final isCorrectAnswer = isCorrect[index];

//       return {
//         'questionId': questionId,
//         'answer': answer,
//         'isCorrect': isCorrectAnswer,
//       };
//     }).toList();
//     int calculateScore() {
//       // Calculate the number of correct answers
//       return isCorrect.where((correct) => correct == true).length;
//     }

//     await _studentSubmissionService.submitStudentSubmission(
//       studentId:
//           '2b2de06c-7f3f-4b33-8a52-8687ea69899d', // Replace with actual student ID
//       assessmentId: "2dae8f20-3254-40ab-9624-70779d3b5947",
//       answers: answers,
//       score: calculateScore(),
//       status: 'completed', // Change to 'completed' or other status as needed
//     );

//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Answers submitted successfully')),
//     );

//     Navigator.pop(context); // Navigate back or perform another action
//   }

//   void updateAnswer(String questionId, String answer, bool isCorrectAnswer) {
//     _studentSubmissionService.updateOrCreateAnswer(
//       studentId:
//           '2b2de06c-7f3f-4b33-8a52-8687ea69899d', // Replace with actual student ID
//       assessmentId: "2dae8f20-3254-40ab-9624-70779d3b5947",
//       questionId: questionId,
//       answer: answer,
//       isCorrect: isCorrectAnswer,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final AssessmentModel assessmentModel =
//         ModalRoute.of(context)!.settings.arguments as AssessmentModel;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(assessmentModel.title ?? "Assessment"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           children: [
//             Expanded(
//               child: ListView.builder(
//                 itemCount: assessmentModel.questions?.length ?? 0,
//                 itemBuilder: (context, index) {
//                   final question = assessmentModel.questions![index];
//                   final questionId = question.questionId;

//                   return Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 8.0),
//                     child: Card(
//                       elevation: 4,
//                       child: Padding(
//                         padding: const EdgeInsets.all(12.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Q${index + 1}: ${question.question}",
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(height: 10),
//                             Column(
//                               children: List.generate(question.options.length,
//                                   (optionIndex) {
//                                 return Row(
//                                   children: [
//                                     Radio<String>(
//                                       value: question.options[optionIndex],
//                                       groupValue: selectedAnswers[
//                                           selectedquestId.indexOf(questionId)],
//                                       onChanged: (value) {
//                                         final isCorrectAnswer =
//                                             question.options[optionIndex] ==
//                                                 (question.answer ?? '');

//                                         setState(() {
//                                           final questionIndex = selectedquestId
//                                               .indexOf(questionId);
//                                           if (questionIndex != -1) {
//                                             // Update existing entry
//                                             selectedAnswers[questionIndex] =
//                                                 value;
//                                             isCorrect[questionIndex] =
//                                                 isCorrectAnswer;
//                                           } else {
//                                             // Create new entry
//                                             selectedAnswers.add(value);
//                                             selectedquestId.add(questionId);
//                                             isCorrect.add(isCorrectAnswer);
//                                           }
//                                         });

//                                         // Update or create answer in Firestore
//                                         updateAnswer(questionId, value!,
//                                             isCorrectAnswer);
//                                       },
//                                     ),
//                                     SizedBox(width: 8),
//                                     Text(question.options[optionIndex]),
//                                   ],
//                                 );
//                               }),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             ElevatedButton(
//               onPressed: submitAnswers,
//               child: Text('Submit Answers'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// class TestScreen2 extends StatefulWidget {
//   const TestScreen2({super.key});

//   @override
//   _TestScreen2State createState() => _TestScreen2State();
// }

// class _TestScreen2State extends State<TestScreen2> {
//   List<String?> selectedAnswers = [];
//   List<String?> selectedquestId = [];
//   List<bool?> isCorrect = [];
//   Map<String, dynamic> questionStateMap = {};

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     final AssessmentModel? assessmentModel =
//         ModalRoute.of(context)?.settings.arguments as AssessmentModel?;
//     if (assessmentModel != null) {
//       if (assessmentModel.questions != null &&
//           assessmentModel.questions!.isNotEmpty) {
//         selectedAnswers =
//             List<String?>.filled(assessmentModel.questions!.length, null);
//         selectedquestId =
//             List<String?>.filled(assessmentModel.questions!.length, null);
//         isCorrect = List<bool?>.filled(assessmentModel.questions!.length, null);

//         for (int i = 0; i < assessmentModel.questions!.length; i++) {
//           selectedquestId[i] = assessmentModel.questions![i].questionId;
//         }
//       }
//     }
//   }

//   void submitAnswers() async {
//     final AssessmentModel? assessmentModel =
//         ModalRoute.of(context)?.settings.arguments as AssessmentModel?;

//     if (assessmentModel == null) return;

//     final answers = selectedAnswers.asMap().entries.map((entry) {
//       final index = entry.key;
//       final answer = entry.value;
//       final questionId = selectedquestId[index];
//       final isCorrectAnswer = isCorrect[index];

//       return {
//         'questionId': questionId,
//         'answer': answer,
//         'isCorrect': isCorrectAnswer,
//       };
//     }).toList();

//     final studentSubmissionService = StudentSubmissionService();

//     await studentSubmissionService.submitStudentSubmission(
//       studentId:
//           '2b2de06c-7f3f-4b33-8a52-8687ea69899d', // Replace with actual student ID
//       assessmentId: "2dae8f20-3254-40ab-9624-70779d3b5947",
//       answers: answers,
//       score: calculateScore(),
//       status: 'completed', // Change to 'completed' or other status as needed
//     );

//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Answers submitted successfully')),
//     );

//     Navigator.pop(context); // Navigate back or perform another action
//   }

//   int calculateScore() {
//     return isCorrect.where((correct) => correct == true).length;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final AssessmentModel assessmentModel =
//         ModalRoute.of(context)!.settings.arguments as AssessmentModel;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(assessmentModel.title ?? "Assessment"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           children: [
//             Expanded(
//               child: ListView.builder(
//                 itemCount: assessmentModel.questions?.length ?? 0,
//                 itemBuilder: (context, index) {
//                   final question = assessmentModel.questions![index];
//                   final questionId = question.questionId;

//                   return Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 8.0),
//                     child: Card(
//                       elevation: 4,
//                       child: Padding(
//                         padding: const EdgeInsets.all(12.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Q${index + 1}: ${question.question}",
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(height: 10),
//                             Column(
//                               children: List.generate(question.options.length,
//                                   (optionIndex) {
//                                 return Row(
//                                   children: [
//                                     Radio<String>(
//                                       value: question.options[optionIndex],
//                                       groupValue: selectedAnswers[index],
//                                       onChanged: (value) {
//                                         setState(() {
//                                           if (questionStateMap
//                                               .containsKey(questionId)) {
//                                             // Update existing entry
//                                             selectedAnswers[
//                                                 questionStateMap[questionId]
//                                                     ['index']] = value;
//                                             isCorrect[
//                                                     questionStateMap[questionId]
//                                                         ['index']] =
//                                                 question.options[optionIndex] ==
//                                                     (question.answer ?? '');
//                                           } else {
//                                             // Create new entry
//                                             selectedAnswers[index] = value;
//                                             isCorrect[index] =
//                                                 question.options[optionIndex] ==
//                                                     (question.answer ?? '');
//                                             questionStateMap[questionId] = {
//                                               'index': index
//                                             };
//                                           }
//                                         });
//                                       },
//                                     ),
//                                     SizedBox(width: 8),
//                                     Text(question.options[optionIndex]),
//                                   ],
//                                 );
//                               }),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             ElevatedButton(
//               onPressed: submitAnswers,
//               child: Text('Submit Answers'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
