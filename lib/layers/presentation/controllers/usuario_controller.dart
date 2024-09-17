import 'package:livros_app/layers/domain/entities/usuario_entity.dart';
import 'package:livros_app/layers/domain/usecases/usuario_usecase/usuario_usecase.dart';

class UsuarioController {
  final LoginUsuarioGoogleUsecase _loginUsuarioGoogleUsecase;

  UsuarioController(this._loginUsuarioGoogleUsecase);

  Usuario? usuario;

  getUsuario() async {
    usuario = await _loginUsuarioGoogleUsecase();
  }
}
