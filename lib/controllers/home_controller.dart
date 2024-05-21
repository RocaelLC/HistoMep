import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

Future<User?> registerWithEmailAndPassword(String email, String password) async {
  try {
    final UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    final User? user = userCredential.user;
    // Guarda el usuario en tu base de datos o realiza otras acciones necesarias
    print('Usuario Registrado!');
    return user;
  } catch (error) {
    print('Error al registrar usuario: $error');
    throw error;
  }
}

Future<User?> loginWithEmailAndPassword(String email, String password) async {
  try {
    final UserCredential userCredential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    final User? user = userCredential.user;
    // Realiza acciones adicionales según tus necesidades
    return user;
  } catch (error) {
    print('Error al iniciar sesión: $error');
    throw error;
  }
}
