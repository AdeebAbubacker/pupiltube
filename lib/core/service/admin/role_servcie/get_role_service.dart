import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:puppil/core/helper/connection/connectivity_checker.dart';
import 'package:puppil/core/models/role/role_model.dart';

class GetRoleService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final ConnectivityChecker _connectivityChecker = ConnectivityChecker();

  Future<Either<int, List<RoleSModel>>> fetchClassIdForStudent() async {
  try {
    // Check for internet connectivity
    final hasInternet = await _connectivityChecker.hasInternetAccess();
    if (!hasInternet) {
      return const Left(0); // No internet connection
    }

    // Fetch users with role 3
    final usersSnapshot =
        await _db.collection('Users').where('role', isEqualTo: 3).get();

    // Check if any users are found
    if (usersSnapshot.docs.isNotEmpty) {
      // Create a list to store combined user and class data
      final List<RoleSModel> combinedData = [];

      // Iterate over each user document
      for (var userDoc in usersSnapshot.docs) {
        final userData = userDoc.data();
        final userId = userDoc.id;

        // Fetch the class name and ID for the current user
        final classInfo = await _getClassNameAndIdForStudent(userId);

        // Create a RoleSModel instance with the combined data
        final roleModel = RoleSModel(
          uid: userId,
          email: userData['email'] ?? '',
          name: userData['name'] ?? '',
          role: userData['role'] ?? 3,
          className: classInfo?['className'] ?? 'Unknown Class', // Use className from fetched data
          classId: classInfo?['docId'] ?? 'Unknown ID', // Use docId from fetched data
        );
        
        combinedData.add(roleModel);
      }

      return Right(combinedData);
    } else {
      return const Right([]); // Return an empty list if no matching users are found
    }
  } catch (e) {
    print('Error fetching class ID for student: $e');
    return const Left(1); // Return 1 if an exception occurs
  }
}


  // Future<Either<int, List<RoleSModel>>> fetchClassIdForStudent() async {
  //   try {
  //     // Check for internet connectivity
  //     final hasInternet = await _connectivityChecker.hasInternetAccess();
  //     if (!hasInternet) {
  //       return const Left(0); // No internet connection
  //     }

  //     // Fetch users with role 3
  //     final usersSnapshot =
  //         await _db.collection('Users').where('role', isEqualTo: 3).get();

  //     // Check if any users are found
  //     if (usersSnapshot.docs.isNotEmpty) {
  //       // Create a list to store combined user and class data
  //       final List<RoleSModel> combinedData = [];

  //       // Iterate over each user document
  //       for (var userDoc in usersSnapshot.docs) {
  //         final userData = userDoc.data();
  //         final userId = userDoc.id;

  //         // Fetch the class name for the current user
  //         final className = await _getClassNameAndIdForStudent(userId);
  //         print(className?['className'].toString());
  //         print(className?['docId'].toString());
  //         // Create a RoleSModel instance with the combined data
  //         final roleModel = RoleSModel(
  //           uid: userId,
  //           email: userData['email'] ?? '',
  //           name: userData['name'] ?? '',
  //           role: userData['role'] ?? 3,
  //           className: "ss", // Include the class name if available
  //         );
  //         print(roleModel.className);
  //         combinedData.add(roleModel);
  //       }

  //       return Right(combinedData);
  //     } else {
  //       return const Right(
  //           []); // Return an empty list if no matching users are found
  //     }
  //   } catch (e) {
  //     return const Left(1); // Return 1 if an exception occurs
  //   }
  // }



  // Helper function to get the class name for a student by checking the 'Classes' collection
  Future<Map<String, String>?> _getClassNameAndIdForStudent(
      String studentId) async {
    try {
      // Query to fetch classes where the student is part of the 'students' array
      final classSnapshot = await _db
          .collection('classes')
          .where('students', arrayContains: studentId)
          .get();

      // If a class is found, return a map with className and docId
      if (classSnapshot.docs.isNotEmpty) {
        final classDoc = classSnapshot.docs.first;
        final data = classDoc.data() as Map<String, dynamic>;
        final className = data['className'] as String?;
        final docId = classDoc.id;

        if (className != null) {
          return {
            'className': className,
            'docId': docId,
          };
        }
      }
    } catch (e) {
      // Handle exceptions, such as document not found or permission issues
      print('Error fetching class info: $e');
    }
    return null; // Return null if no class is found
  }
}
