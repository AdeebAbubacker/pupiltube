import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:puppil/core/helper/connection/connectivity_checker.dart';

class SubmissionService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final ConnectivityChecker _connectivityChecker = ConnectivityChecker();

  Future<Either<int, List<StudentToSubmit>>> checkStudentSubmissions({
    required String assessmentId,
  }) async {
    List<StudentToSubmit> studentsNotSubmittedList = [];

    try {
      // Check for internet connectivity
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        print("No internet");
        return const Left(0);
      }

      // Step 1: Fetch the assessment document to get classId
      DocumentSnapshot assessmentSnapshot =
          await _firestore.collection('assessments').doc(assessmentId).get();

      if (!assessmentSnapshot.exists) {
        print("Assessment not found");
        return const Left(1);
      }

      Map<String, dynamic>? assessmentData =
          assessmentSnapshot.data() as Map<String, dynamic>?;

      if (assessmentData == null || !assessmentData.containsKey('classId')) {
        print('classId not found in the assessment data.');
        return const Left(1);
      }

      String classId = assessmentData['classId'];

      // Step 2: Fetch the class document to get students list
      DocumentSnapshot classSnapshot =
          await _firestore.collection('classes').doc(classId).get();

      if (!classSnapshot.exists) {
        print("Class not found");
        return const Left(1);
      }

      Map<String, dynamic>? classData =
          classSnapshot.data() as Map<String, dynamic>?;

      if (classData == null || !classData.containsKey('students')) {
        print('Students not found in the class data.');
        return const Left(1);
      }

      List<String> students = List<String>.from(classData['students']);
      print('Students in the class: $students');

      // Step 3: Check each student’s submission status
      List<String> studentsSubmitted = [];

      for (String studentId in students) {
        QuerySnapshot submissionSnapshot = await _firestore
            .collection('studentSubmissions')
            .where('assessmentId', isEqualTo: assessmentId)
            .where('studentId', isEqualTo: studentId)
            .get();

        // Check if the student has any submissions
        if (submissionSnapshot.docs.isNotEmpty) {
          studentsSubmitted.add(studentId);
          print('Student $studentId has submitted the assessment.');
        } else {
          print('Student $studentId has not submitted the assessment.');

          // Fetch the student name from the users collection
          DocumentSnapshot userSnapshot =
              await _firestore.collection('Users').doc(studentId).get();

          String name = 'User not found';
          if (userSnapshot.exists) {
            Map<String, dynamic>? userData =
                userSnapshot.data() as Map<String, dynamic>?;
            if (userData != null && userData.containsKey('name')) {
              name = userData['name'];
            } else {
              name = 'Name not found';
            }
          }

          // Add to the list of students who did not submit
          studentsNotSubmittedList.add(StudentToSubmit(
            name: name,
            id: studentId,
            assessmentId: assessmentId,
          ));
        }
      }

      // Output results
      print('Students who submitted: $studentsSubmitted');
      print('Students who did not submit: $studentsNotSubmittedList');

      // Return the list of students who did not submit
      print(studentsNotSubmittedList.length);
      return right(studentsNotSubmittedList);
    } catch (e) {
      print('Error: ${e.toString()}');
      return const Left(1);
    }
  }
}

class StudentToSubmit {
  final String name;
  final String id;
  final String assessmentId;

  StudentToSubmit({
    required this.name,
    required this.id,
    required this.assessmentId,
  });
}
