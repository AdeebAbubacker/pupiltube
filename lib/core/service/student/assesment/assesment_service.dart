import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:puppil/core/helper/connection/connectivity_checker.dart';
import 'package:puppil/core/models/assesment/assesment_model.dart';
import 'package:dartz/dartz.dart';

class AssesmentStudentService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final ConnectivityChecker _connectivityChecker = ConnectivityChecker();

  Future<Either<int, List<AssessmentModel>>> fetchClassIdForStudent(
      String uid) async {
    try {
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        return const Left(0);
      }

      // Query to fetch the class document where the student array contains the provided uid
      final snapshot = await _db
          .collection('classes')
          .where('students', arrayContains: "1YBTaDudA2MWwGrPlwpy8EYip4m1")
          .get();

      if (snapshot.docs.isNotEmpty) {
        // Assuming there should be only one class document for the student
        final classDoc = snapshot.docs.first;
        final classId = classDoc.id;

        // Query to fetch assessments for the found classId with status 'draft'
        final snapshot2 = await _db
            .collection('assessments')
            .where('classId', isEqualTo: classId)
            .where('status', isEqualTo: 'draft')
            .get();

        final assessments = snapshot2.docs
            .map((doc) => AssessmentModel.fromMap(doc.data()))
            .toList();
        print(assessments.length);
        return Right(assessments);
      } else {
        return const Right([]); // Return an empty list if no class is found
      }
    } catch (e) {
      return const Left(1); // Return 1 on exception
    }
  }

  Future<Either<String, List<AssessmentModel>>> getAssessmentsToDoForUser({
    required String uid,
  }) async {
    try {
      // Check for internet connectivity
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        print("no internet");
        return const Left('No internet connection');
      }

      // Step 1: Check if the user is part of any class
      QuerySnapshot classesSnapshot = await _db
          .collection('classes')
          .where('students', arrayContains: uid)
          .get();

      if (classesSnapshot.docs.isNotEmpty) {
        // User is found in a class
        DocumentSnapshot classDoc = classesSnapshot.docs.first;
        String classId = classDoc.id; // Get the class ID
        print('Class ID: $classId');

        // Step 2: Check if this class has any assessments
        QuerySnapshot assessmentsSnapshot = await _db
            .collection('assessments')
            .where('classId', isEqualTo: classId)
            .get();

        if (assessmentsSnapshot.docs.isNotEmpty) {
          // Step 3: Check each assessment to see if there's a submission
          List<AssessmentModel> toDoAssessments = [];
          final currentTime = Timestamp.now();

          for (var assessmentDoc in assessmentsSnapshot.docs) {
            String assessmentId = assessmentDoc.id;

            // Convert Firestore document to AssessmentModel
            AssessmentModel assessment = AssessmentModel.fromMap(
                assessmentDoc.data() as Map<String, dynamic>);

            // Check if the assessment's endTime has passed
            if (assessment.timeSlot?.endTime != null &&
                assessment.timeSlot!.endTime!.compareTo(currentTime) <= 0) {
              // Skip this assessment since it's overdue
              continue;
            }

            // Check if this assessment has a corresponding submission by the user
            QuerySnapshot submissionSnapshot = await _db
                .collection('studentSubmissions')
                .where('assessmentId', isEqualTo: assessmentId)
                .where('studentId', isEqualTo: uid)
                .get();

            if (submissionSnapshot.docs.isEmpty) {
              // No submission found for this assessment by this user
              toDoAssessments.add(assessment);
            }
          }

          if (toDoAssessments.isNotEmpty) {
            // Return the list of assessments to do
            print('Assessments to do: ${toDoAssessments.length}');
            return Right(toDoAssessments);
          } else {
            print("All assessments are submitted or overdue.");
            // All assessments have submissions or are overdue
            return Left('All assessments are submitted or overdue.');
          }
        } else {
          print("No assessments found for the class");
          // No assessments found for the class
          return Left('No assessments found for the class');
        }
      } else {
        print("User is not part of any class");
        // User not found in any class
        return Left('User is not part of any class');
      }
    } catch (e) {
      print('Error: ${e.toString()}');
      return Left('Failed to check assessments: ${e.toString()}');
    }
  }

  Future<Either<String, List<AssessmentModel>>> getOverdueAssessmentsForUser({
    required String uid,
  }) async {
    try {
      // Check for internet connectivity
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        print("no internet");
        return const Left('No internet connection');
      }

      // Step 1: Check if the user is part of any class
      QuerySnapshot classesSnapshot = await _db
          .collection('classes')
          .where('students', arrayContains: uid)
          .get();

      if (classesSnapshot.docs.isNotEmpty) {
        // User is found in a class
        DocumentSnapshot classDoc = classesSnapshot.docs.first;
        String classId = classDoc.id; // Get the class ID
        print('Class ID: $classId');

        // Step 2: Check if this class has any assessments
        QuerySnapshot assessmentsSnapshot = await _db
            .collection('assessments')
            .where('classId', isEqualTo: classId)
            .get();

        if (assessmentsSnapshot.docs.isNotEmpty) {
          // Step 3: Check each assessment to see if it's overdue
          List<AssessmentModel> overdueAssessments = [];
          final currentTime = Timestamp.now();

          for (var assessmentDoc in assessmentsSnapshot.docs) {
            String assessmentId = assessmentDoc.id;

            // Convert Firestore document to AssessmentModel
            AssessmentModel assessment = AssessmentModel.fromMap(
                assessmentDoc.data() as Map<String, dynamic>);

            // Check if the assessment's endTime has passed
            if (assessment.timeSlot?.endTime != null &&
                assessment.timeSlot!.endTime!.compareTo(currentTime) <= 0) {
              // Assessment is overdue

              // Check if this assessment has a corresponding submission by the user
              QuerySnapshot submissionSnapshot = await _db
                  .collection('studentSubmissions')
                  .where('assessmentId', isEqualTo: assessmentId)
                  .where('studentId', isEqualTo: uid)
                  .get();

              if (submissionSnapshot.docs.isEmpty) {
                // No submission found for this assessment by this user
                overdueAssessments.add(assessment);
              }
            }
          }

          if (overdueAssessments.isNotEmpty) {
            // Return the list of overdue assessments
            print('Overdue assessments: ${overdueAssessments.length}');
            return Right(overdueAssessments);
          } else {
            print("No overdue assessments found.");
            // No overdue assessments found
            return Left('No overdue assessments found.');
          }
        } else {
          print("No assessments found for the class");
          // No assessments found for the class
          return Left('No assessments found for the class');
        }
      } else {
        print("User is not part of any class");
        // User not found in any class
        return Left('User is not part of any class');
      }
    } catch (e) {
      print('Error: ${e.toString()}');
      return Left('Failed to check overdue assessments: ${e.toString()}');
    }
  }
}
