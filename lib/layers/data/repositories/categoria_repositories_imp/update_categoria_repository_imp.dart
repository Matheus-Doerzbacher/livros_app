import 'package:livros_app/layers/domain/entities/categoria_entity.dart';
import 'package:livros_app/layers/domain/repositories/categoria_repositories/update_categoria_repository.dart';

class UpdateCategoriaRepositoryImp implements UpdateCategoriaRepository {
  @override
  Future<bool> call(Categoria categoria) async {
    return false;
  }
}
