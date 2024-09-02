import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:puppil/core/helper/token/get_uid.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  AuthService(this._firebaseAuth);
  final FirebaseAuth _firebaseAuth;

  Future<Either<String, int?>> login({
    required String email,
    required String password,
  }) async {
    try {
      // Sign in with email and password
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Check if user is authenticated
      if (userCredential.user != null) {
        // Get the user's ID
        String userId = userCredential.user!.uid;

        // Check if the user document exists in the 'Users' collection
        DocumentSnapshot userDoc = await FirebaseFirestore.instance
            .collection('Users')
            .doc(userId)
            .get();

        if (userDoc.exists) {
          // Assuming 'role' field is stored as an int
          int role = userDoc.get('role');

          // Validate role and return it
          if (role == 1 || role == 2 || role == 3) {
            if (role == 2 || role == 3) {
              // Retrieve classId from the user's data if it's stored there
              String? classId = userDoc.get('classId');

              if (classId != null && classId.isNotEmpty) {
                // Store classId in SharedPreferences
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.setString('classId', classId);
              }
              String? studentName = userDoc.get('name');

              if (studentName != null && studentName.isNotEmpty) {
                // Store classId in SharedPreferences
                SharedPreferences prefs = await SharedPreferences.getInstance();
                await prefs.setString('studentName', studentName);
              }
            }
            print(role.toString());
            return Right(role);
          } else {
            print('Invalid role');
            return const Left('Invalid role');
          }
        } else {
          print('User document does not exist in Users collection');
          return const Left('User document does not exist');
        }
      } else {
        print('User not authenticated');
        return const Left('User not authenticated');
      }
    } catch (e) {
      print('Error during login: ${e.toString()}');
      return Left(e.toString());
    }
  }

  Future<Either<int, int?>> signUpAndSaveUserData({
    required String name,
    required String email,
    required String password,
    String? classId,
    required int role,
  }) async {
    try {
      // Sign up with Firebase Auth
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Get the generated UID
      String uid = userCredential.user?.uid ?? '';

      // Save additional user data in Firestore
      await _db.collection('Users').doc(uid).set({
        'name': name,
        'email': email,
        'role': role,
        'classId': classId,
      });

      // Handle class updates based on role
      if (role == 2 || role == 3) {
        if (classId == null) {
          // If classId is not provided, return an error
          return Left(-1); // Error code for missing classId
        }

        // Fetch the current class document
        DocumentSnapshot classDoc =
            await _db.collection('classes').doc(classId).get();
        if (classDoc.exists) {
          // Get the current lists of teachers or students
          List<dynamic> teachers = classDoc.get('teachers') ?? [];
          List<dynamic> students = classDoc.get('students') ?? [];

          // Update the list based on the role
          if (role == 2) {
            // Add to teachers array
            if (!teachers.contains(uid)) {
              teachers.add(uid);
            }
            // Update the class document with the new list of teachers
            await _db.collection('classes').doc(classId).update({
              'teachers': teachers,
            });
          } else if (role == 3) {
            // Add to students array
            if (!students.contains(uid)) {
              students.add(uid);
            }
            // Update the class document with the new list of students
            await _db.collection('classes').doc(classId).update({
              'students': students,
            });
          } // Store classId in SharedPreferences
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('classId', classId);
          await prefs.setString('studentName', name);
          return Right(role); // Return role on success
        } else {
          // Class document does not exist
          return Left(1); // Error code for class not found
        }
      } else if (role == 1) {
        // Handle admin role separately
        return Right(role); // Return role on success
      }

      // Return an error if role is not recognized
      return Left(2); // Error code for unrecognized role
    } catch (e) {
      // Handle errors
      print('Error occurred: ${e.toString()}');
      return Left(3); // Error code for general exceptions
    }
  }

  Future<Either<bool, bool>> logout() async {
    try {
      await _firebaseAuth.signOut();
      return const Right(true);
    } catch (e) {
      return const Left(false);
    }
  }

  Future<void> deleteUser(
    String uid,
    String classId,
  ) async {
    try {
      // Fetch user data from the Users collection to get the classId
      DocumentSnapshot userDoc = await _db.collection('Users').doc(uid).get();

      if (!userDoc.exists) {
        print('User document does not exist.');
        return;
      }

      // Extract the data from the document snapshot
      final Map<String, dynamic>? userData =
          userDoc.data() as Map<String, dynamic>?;

      // Extract the classId from the user's data if it exists
      // final String? classId = userData?['classId'];

      // Delete the user document from the Firestore Users collection
      await _db.collection('Users').doc(uid).delete();
      print('User document deleted from Firestore.');

      // If classId is available, update the class document
      // Fetch the class document
      DocumentSnapshot classDoc =
          await _db.collection('classes').doc(classId).get();

      if (classDoc.exists) {
        // Extract the class data and get the students list
        final Map<String, dynamic>? classData =
            classDoc.data() as Map<String, dynamic>?;
        List<dynamic> students = classData?['students'] ?? [];

        // Remove the user from the students array if present
        if (students.contains(uid)) {
          students.remove(uid);

          // Update the class document with the modified students array
          await _db.collection('classes').doc(classId).update({
            'students': students,
          });
          print('User removed from the students array in the class document.');
        } else {
          print('User is not found in the students array.');
        }
      } else {
        print('Class document does not exist.');
      }
    } catch (e) {
      print('Error during user deletion: $e');
      // Additional error handling as needed
    }
  }

  Future<void> updateProfile({
    String? newName,
    int? newRole,
    String? newImgUrl,
  }) async {
    try {
      final uid = await getUserUID();
      User? user = _firebaseAuth.currentUser;

      // Create a map to store the fields that need to be updated
      final Map<String, dynamic> updateData = {};

      if (newName != null) {
        updateData['name'] = newName;
      }
      if (newRole != null) {
        updateData['role'] = newRole;
      }
      if (newImgUrl != null) {
        updateData['imgUrl'] = newImgUrl;
      }

      if (updateData.isNotEmpty) {
        // Update user profile in Firestore
        await _db.collection('Users').doc(uid).update(updateData);
        print('Profile updated successfully.');
      } else {
        print('No fields to update.');
      }
    } catch (e) {
      // Handle the exception, like showing an error message to the user
      print('Error updating profile: $e');
    }
  }
}

class UpdateMyAssesment {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> myasssement() async {
    try {
      await _db
          .collection('assessments')
          .doc("7980a931-0848-44c3-b494-a719119b939b")
          .update({
        'questions': [
          {
            'questionId': 'f2730af3-2cf9-4a7e-a731-566029856b33',
            'question': 'What is essential for plant growth?',
            'options': ['Water', 'Air', 'Sunlight', 'Soil'],
            'answer': 'Water'
          },
          {
            'questionId': '48824fe6-e22a-45aa-9114-17805026f9c5',
            'question': 'Which of these animals lives in water?',
            'options': ['Dog', 'Cat', 'Bird', 'Fish'],
            'answer': 'Fish'
          }
        ],
      });
    } catch (e) {
      // Handle the exception
      print(e);
    }
    return; // Explicitly return null
  }
}
