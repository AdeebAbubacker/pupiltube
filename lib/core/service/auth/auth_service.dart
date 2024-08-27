import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  AuthService(this._firebaseAuth);
  final FirebaseAuth _firebaseAuth;
  Future<Either<String, User?>> login({
    required email,
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
          String userRole = userDoc.get('role'); // Assuming 'role' field exists
     
        } else {}
      }
   
      return Right(userCredential.user);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<void> signUpAndSaveUserData({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      // Sign up with Firebase Auth
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Get the generated UID
      String uid = userCredential.user?.uid ?? '';

      // Save additional user data in Firestore
      await FirebaseFirestore.instance.collection('Users').doc(uid).set({
        'name': name,
        'email': email,
        'role': 1,
      });
    } catch (e) {
  
    }
  }
}
