import 'package:livros_app/layers/domain/entities/usuario_entity.dart';
import 'package:livros_app/layers/domain/repositories/usuairo_repository.dart';
import 'package:livros_app/layers/domain/usecases/usuario_usecase/usuario_usecase.dart';

class LoginUsuarioGoogleUsecaseImp implements LoginUsuarioGoogleUsecase {
  final LoginUsuarioGoogleRepository _loginUsuarioGoogleRepository;

  LoginUsuarioGoogleUsecaseImp(this._loginUsuarioGoogleRepository);

  @override
  Future<Usuario> call() async {
    return await _loginUsuarioGoogleRepository();
  }
}
