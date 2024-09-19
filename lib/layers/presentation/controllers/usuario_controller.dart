import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UsuarioController {
  static User? user = FirebaseAuth.instance.currentUser;
  static bool isLoading = false;

  static Future<User?> loginWithGoogle() async {
    final googleAcount = await GoogleSignIn().signIn();

    final googleAuth = await googleAcount?.authentication;

    final credentials = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    final userCredential = await FirebaseAuth.instance.signInWithCredential(
      credentials,
    );

    return userCredential.user;
  }

  static Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
  }
}
