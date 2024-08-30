import 'package:firebase_auth/firebase_auth.dart';

Future<String?> getUserUID() async {
  User? user = FirebaseAuth.instance.currentUser;
  return user?.uid;
}
