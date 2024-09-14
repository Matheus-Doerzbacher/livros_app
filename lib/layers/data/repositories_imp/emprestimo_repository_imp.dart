import 'package:livros_app/layers/data/datasources/emprestimo_datasources/emprestimo_datasource.dart';
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

////////////////////////////////////////////////////////////////////////////////////////////////////

class GetEmprestimoByIdRepositoryImp implements GetEmprestimoByIdRepository {
  final GetEmprestimoByIdDatasource _getEmprestimoByIdDatasource;

  GetEmprestimoByIdRepositoryImp(this._getEmprestimoByIdDatasource);

  @override
  Future<Emprestimo> call(String idEmprestimo) async {
    return await _getEmprestimoByIdDatasource(idEmprestimo);
  }
}

////////////////////////////////////////////////////////////////////////////////////////////////////

class GetEmorestimosRepositoryImp implements GetEmprestimosRepository {
  final GetEmprestimosDatasource _getEmprestimosDatasource;

  GetEmorestimosRepositoryImp(this._getEmprestimosDatasource);

  @override
  Future<List<Emprestimo>> call() async {
    return await _getEmprestimosDatasource();
  }
}

////////////////////////////////////////////////////////////////////////////////////////////////////

class UpdateEmprestimoRepositoryImp implements UpdateEmprestimoRepository {
  final UpdateEmprestimoDatasource _updateEmprestimoDatasource;

  UpdateEmprestimoRepositoryImp(this._updateEmprestimoDatasource);

  @override
  Future<bool> call(Emprestimo emprestimo) async {
    return await _updateEmprestimoDatasource(emprestimo);
  }
}

////////////////////////////////////////////////////////////////////////////////////////////////////

class DeleteEmprestimoRepositoryImp implements DeleteEmprestimoRepository {
  final DeleteEmprestimoDatasource _deleteEmprestimoDatasource;

  DeleteEmprestimoRepositoryImp(this._deleteEmprestimoDatasource);
  @override
  Future<bool> call(String idEmprestimo) async {
    return await _deleteEmprestimoDatasource(idEmprestimo);
  }
}
