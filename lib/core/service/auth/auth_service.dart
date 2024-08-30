import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  AuthService(this._firebaseAuth);
  final FirebaseAuth _firebaseAuth;

  Future<Either<String, int?>> login({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Check if user is authenticated
      if (userCredential.user != null) {
        // Get the user's ID
        String userId = userCredential.user!.uid;

        // Retrieve user role
        DocumentSnapshot userDoc = await FirebaseFirestore.instance
            .collection('Users')
            .doc(userId)
            .get();

        if (userDoc.exists) {
          // Assuming 'role' field is stored as an int
          int role = userDoc.get('role');

          // Validate role and return it
          if (role == 1 || role == 2 || role == 3) {
            print(role.toString());
            return Right(role);
          } else {
            print('Invalid role');
            return Left('Invalid role');
          }
        } else {
          print('User role does not exist');
          return Left('User role does not exist');
        }
      } else {
        print('User not authenticated');
        return Left('User not authenticated');
      }
    } catch (e) {
      print('object ${e.toString()}');
      return Left(e.toString());
    }
  }

  Future<void> signUpAndSaveUserData({
    required String name,
    required String email,
    required String password,
    String? classId, // New parameter to specify the class ID
    required int role, // New parameter to specify the class ID
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
      });

      // Update the class document based on the role
      if (role == 2 || role == 3) {
        // Assuming role 2 is for teachers and 3 is for students
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
          }
        } else {
          print('Class document does not exist.');
        }
      }
    } catch (e) {
      print('Error during sign up: $e');
      // Handle errors (e.g., logging, user notification)
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
