import 'package:livros_app/layers/data/datasources/usuario_datasources/usuario_datasource.dart';
import 'package:livros_app/layers/domain/entities/usuario_entity.dart';
import 'package:livros_app/layers/domain/repositories/usuairo_repository.dart';

class LoginUsuarioGoogleRepositoryImp implements LoginUsuarioGoogleRepository {
  final LoginUsuarioGoogleDatasource _loginUsuarioGoogleDatasource;

  LoginUsuarioGoogleRepositoryImp(this._loginUsuarioGoogleDatasource);
  @override
  Future<Usuario> call() async {
    return await _loginUsuarioGoogleDatasource();
  }
}
