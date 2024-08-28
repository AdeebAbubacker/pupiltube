import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:puppil/core/connection/connectivity_checker.dart';
import 'package:puppil/core/models/assesment/assesment_model.dart';
import 'package:dartz/dartz.dart';

class AssesmentStudentService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final ConnectivityChecker _connectivityChecker = ConnectivityChecker();

  Future<Either<int, List<AssessmentModel>>> fetchClassIdForStudent(
      String uid) async {
    try {
      final hasInternet = await _connectivityChecker.hasInternetAccess();
      if (!hasInternet) {
        return const Left(0);
      }

      // Query to fetch the class document where the student array contains the provided uid
      final snapshot = await _firestore
          .collection('classes')
          .where('students', arrayContains: uid)
          .get();

      if (snapshot.docs.isNotEmpty) {
        // Assuming there should be only one class document for the student
        final classDoc = snapshot.docs.first;
        final classId = classDoc.id;

        // Query to fetch assessments for the found classId with status 'draft'
        final snapshot2 = await _firestore
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
}
