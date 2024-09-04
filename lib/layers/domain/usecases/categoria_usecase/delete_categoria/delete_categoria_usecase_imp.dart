import 'package:livros_app/layers/domain/repositories/categoria_repositories/delete_categoria_repository.dart';
import 'package:livros_app/layers/domain/usecases/categoria_usecase/delete_categoria/delete_categoria_usecase.dart';

class DeleteCategoriaUsecaseImp implements DeleteCategoriaUsecase {
  final DeleteCategoriaRepository _deleteCategoriaRepository;

  DeleteCategoriaUsecaseImp(this._deleteCategoriaRepository);
  @override
  Future<bool> call(String idCategoria) async {
    return await _deleteCategoriaRepository(idCategoria);
  }
}
