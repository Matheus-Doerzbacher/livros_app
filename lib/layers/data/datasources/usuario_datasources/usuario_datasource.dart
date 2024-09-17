import 'package:livros_app/layers/domain/entities/usuario_entity.dart';

abstract class LoginUsuarioGoogleDatasource {
  Future<Usuario> call();
}
