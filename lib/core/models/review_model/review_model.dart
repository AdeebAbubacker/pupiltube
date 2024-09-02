class ReviewModel {
  final String questionId;
  final String question;
  final List<String> options;
  final String correctAnswer;
  final String selectedAnswer;

  // Constructor
  ReviewModel({
    required this.questionId,
    required this.question,
    required this.options,
    required this.correctAnswer,
    required this.selectedAnswer,
  });

  // Factory method to create a ReviewModel from a map
  factory ReviewModel.fromMap(Map<String, dynamic> map) {
    return ReviewModel(
      questionId: map['questionId'] ?? '',
      question: map['question'] ?? '',
      options: List<String>.from(map['options'] ?? []),
      correctAnswer: map['correctAnswer'] ?? '',
      selectedAnswer: map['selectedAnswer'] ?? '',
    );
  }

  // Method to convert a ReviewModel to a map
  Map<String, dynamic> toMap() {
    return {
      'questionId': questionId,
      'question': question,
      'options': options,
      'correctAnswer': correctAnswer,
      'selectedAnswer': selectedAnswer,
    };
  }
}

class AssessmentReviewResponse {
  final int totalScore; // Total score achieved by the student
  final List<ReviewModel> review; // List of review details for each question

  // Constructor
  AssessmentReviewResponse({
    required this.totalScore,
    required this.review,
  });

  // Factory method to create an AssessmentReviewResponse from a map
  factory AssessmentReviewResponse.fromMap(Map<String, dynamic> map) {
    return AssessmentReviewResponse(
      totalScore: map['totalScore'] ?? 0,
      review: List<ReviewModel>.from(
        (map['review'] as List<dynamic>?)?.map((item) => ReviewModel.fromMap(item as Map<String, dynamic>)) ?? [],
      ),
    );
  }

  // Method to convert an AssessmentReviewResponse to a map
  Map<String, dynamic> toMap() {
    return {
      'totalScore': totalScore,
      'review': review.map((item) => item.toMap()).toList(),
    };
  }
}
