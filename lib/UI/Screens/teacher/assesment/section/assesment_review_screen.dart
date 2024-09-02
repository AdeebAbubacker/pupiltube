import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/core/models/review_model/review_model.dart';
import 'package:puppil/core/view_model/review_assesment/review_assesment_bloc.dart';

class ReviewAssessmentView extends StatefulWidget {
  const ReviewAssessmentView({Key? key}) : super(key: key);

  @override
  State<ReviewAssessmentView> createState() => _ReviewAssessmentViewState();
}

class _ReviewAssessmentViewState extends State<ReviewAssessmentView> {
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      BlocProvider.of<ReviewAssesmentBloc>(context)
          .add(const ReviewAssesmentEvent.review());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assessment Review'),
      ),
      body: BlocBuilder<ReviewAssesmentBloc, ReviewAssesmentState>(
        builder: (context, state) {
          return state.map(
            initial: (_) =>
                const Center(child: Text('Welcome to Assessment Review')),
            loading: (_) => const Center(child: CircularProgressIndicator()),
            reviewAssesment: (reviewState) {
              final reviewData = reviewState.assesment;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Total Score: ${reviewData.totalScore}',
                      // style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.blue),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: reviewData.review.length,
                      itemBuilder: (context, index) {
                        final question = reviewData.review[index];
                        final isAnswerCorrect =
                            question.selectedAnswer == question.correctAnswer;

                        return Card(
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  question.question,
                                  // style: Theme.of(context).textTheme.subtitle1?.copyWith(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 8.0),
                                const Text(
                                  'Options:',
                                  // style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Colors.grey[700]),
                                ),
                                const SizedBox(height: 4.0),
                                ...question.options.map((option) {
                                  return Row(
                                    children: [
                                      const Icon(
                                        Icons.circle,
                                        size: 10,
                                        color: Colors.grey,
                                      ),
                                      const SizedBox(width: 8.0),
                                      Expanded(child: Text(option)),
                                    ],
                                  );
                                }).toList(),
                                const SizedBox(height: 8.0),
                                const Text(
                                  'Correct Answer:',
                                  //  style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Colors.grey[700]),
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.check_circle,
                                      color: Colors.green,
                                      size: 20,
                                    ),
                                    const SizedBox(width: 8.0),
                                    Text(
                                      question.correctAnswer,
                                      style: const TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8.0),
                                const Text(
                                  'Selected Answer:',
                                  // style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Colors.grey[700]),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      isAnswerCorrect
                                          ? Icons.check_circle
                                          : Icons.cancel,
                                      color: isAnswerCorrect
                                          ? Colors.green
                                          : Colors.red,
                                      size: 20,
                                    ),
                                    const SizedBox(width: 8.0),
                                    Expanded(
                                      child: Text(
                                        question.selectedAnswer,
                                        style: TextStyle(
                                          color: isAnswerCorrect
                                              ? Colors.green
                                              : Colors.red,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                if (!isAnswerCorrect)
                                  const Padding(
                                    padding: EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      'Incorrect answer',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
            error: (errorState) => Center(
              child: Text(
                'Error: ${errorState.error}',
                style: const TextStyle(color: Colors.red),
              ),
            ),
            noInternet: (_) =>
                const Center(child: Text('No internet connection')),
          );
        },
      ),
    );
  }
}
