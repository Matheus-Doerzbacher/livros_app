import 'package:livros_app/layers/domain/entities/categoria_entity.dart';
import 'package:livros_app/layers/domain/repositories/categoria_repositories/create_categoria_repository.dart';

class CreateCategoriaRepositoryImp implements CreateCategoriaRepository {
  @override
  Future<bool> call(Categoria categoria) async {
    return false;
  }
}
