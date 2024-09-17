import 'package:google_sign_in/google_sign_in.dart';
import 'package:livros_app/layers/data/datasources/usuario_datasources/usuario_datasource.dart';
import 'package:livros_app/layers/domain/entities/usuario_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginUsuarioGoogleDatasourceImp implements LoginUsuarioGoogleDatasource {
  @override
  Future<Usuario> call() async {
    try {
      // Iniciar o fluxo de autenticação
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obter os detalhes de autenticação da solicitação
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Criar uma nova credencial
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Fazer login com a credencial
      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      // Obter o usuário do Firebase
      final User? firebaseUser = userCredential.user;

      if (firebaseUser != null) {
        // Criar um objeto Usuario com os dados do Firebase
        return Usuario(
          id: firebaseUser.uid,
          nome: firebaseUser.displayName ?? '',
          email: firebaseUser.email ?? '',
          urlImage: firebaseUser.photoURL ?? '',
        );
      } else {
        throw Exception('Falha ao obter dados do usuário após o login');
      }
    } catch (e) {
      throw Exception('Erro ao fazer login com o Google: $e');
    }
  }
}
