import 'package:firebase_auth/firebase_auth.dart';

class FirebaseClient {
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    final fireAuth = FirebaseAuth.instance;
    fireAuth.signInWithEmailAndPassword(email: email, password: password);
  }
}

class BaseModel {
  BaseModel({this.data, this.error});
  final String? error;
  final dynamic data;
}
