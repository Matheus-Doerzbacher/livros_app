import 'package:livros_app/layers/data/datasources/emprestimo_datasources/create_emprestimo_datasource.dart';
import 'package:livros_app/layers/domain/entities/emprestimo_entity.dart';
import 'package:livros_app/layers/domain/repositories/emprestimo_respository.dart';

class CreateEmprestimoRepositoryImp implements CreateEmprestimoRepository {
  final CreateEmprestimoDatasource _createEmprestimoDatasource;

  CreateEmprestimoRepositoryImp(this._createEmprestimoDatasource);

  @override
  Future<bool> call(Emprestimo emprestimo) async {
    return await _createEmprestimoDatasource(emprestimo);
  }
}
