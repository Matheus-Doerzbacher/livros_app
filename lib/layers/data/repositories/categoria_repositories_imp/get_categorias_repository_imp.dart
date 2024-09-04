import 'package:livros_app/layers/domain/entities/categoria_entity.dart';
import 'package:livros_app/layers/domain/repositories/categoria_repositories/get_categorias_repository.dart';

class GetCategoriasRepositoryImp implements GetCategoriasRepository {
  @override
  Future<List<Categoria>> call() async {
    return [];
  }
}
