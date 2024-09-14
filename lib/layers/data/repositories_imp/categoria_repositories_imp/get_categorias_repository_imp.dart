import 'package:livros_app/layers/data/datasources/categoria_datasources/get_categorias_datasource.dart';
import 'package:livros_app/layers/domain/entities/categoria_entity.dart';
import 'package:livros_app/layers/domain/repositories/categoria_repository.dart';

class GetCategoriasRepositoryImp implements GetCategoriasRepository {
  final GetCategoriasDatasource _getCategoriasDatasource;

  GetCategoriasRepositoryImp(this._getCategoriasDatasource);
  @override
  Future<List<Categoria>> call() async {
    return _getCategoriasDatasource();
  }
}
