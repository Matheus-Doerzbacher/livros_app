import 'package:livros_app/layers/data/datasources/categoria_datasources/delete_categoria_datasource.dart';
import 'package:livros_app/layers/domain/repositories/categoria_repositories/categoria_repository.dart';

class DeleteCategoriaRepositoryImp implements DeleteCategoriaRepository {
  final DeleteCategoriaDatasource _deleteCategoriaDatasource;

  DeleteCategoriaRepositoryImp(this._deleteCategoriaDatasource);
  @override
  Future<bool> call(String idCategoria) async {
    return await _deleteCategoriaDatasource(idCategoria);
  }
}
