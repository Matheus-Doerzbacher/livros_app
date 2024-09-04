import 'package:livros_app/layers/domain/repositories/categoria_repositories/delete_categoria_repository.dart';

class DeleteCategoriaRepositoryImp implements DeleteCategoriaRepository {
  @override
  Future<bool> call(String idCategoria) async {
    return false;
  }
}
