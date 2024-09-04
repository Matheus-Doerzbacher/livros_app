import 'package:livros_app/layers/data/datasources/categoria_datasources/update_categoria_datasource.dart';
import 'package:livros_app/layers/domain/entities/categoria_entity.dart';
import 'package:livros_app/layers/domain/repositories/categoria_repositories/update_categoria_repository.dart';

class UpdateCategoriaRepositoryImp implements UpdateCategoriaRepository {
  final UpdateCategoriaDatasource _updateCategoriaDatasource;

  UpdateCategoriaRepositoryImp(this._updateCategoriaDatasource);
  @override
  Future<bool> call(Categoria categoria) async {
    return await _updateCategoriaDatasource(categoria);
  }
}
