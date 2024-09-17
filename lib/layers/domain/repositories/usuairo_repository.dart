import 'package:livros_app/layers/domain/entities/usuario_entity.dart';

abstract class LoginUsuarioGoogleRepository {
  Future<Usuario> call();
}
