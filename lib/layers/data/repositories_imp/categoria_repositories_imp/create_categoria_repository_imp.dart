import 'package:livros_app/layers/data/datasources/categoria_datasources/create_categoria_datasource.dart';
import 'package:livros_app/layers/domain/entities/categoria_entity.dart';
import 'package:livros_app/layers/domain/repositories/categoria_repositories/categoria_repository.dart';

class CreateCategoriaRepositoryImp implements CreateCategoriaRepository {
  final CreateCategoriaDatasource _createCategoriaDatasource;

  CreateCategoriaRepositoryImp(this._createCategoriaDatasource);
  @override
  Future<bool> call(Categoria categoria) async {
    return await _createCategoriaDatasource(categoria);
  }
}
