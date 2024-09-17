import 'package:livros_app/layers/domain/entities/usuario_entity.dart';

abstract class LoginUsuarioGoogleUsecase {
  Future<Usuario> call();
}
