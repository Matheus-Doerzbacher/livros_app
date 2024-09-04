import 'package:livros_app/layers/domain/entities/categoria_entity.dart';
import 'package:livros_app/layers/domain/repositories/categoria_repositories/update_categoria_repository.dart';
import 'package:livros_app/layers/domain/usecases/categoria_usecase/update_categoria/update_categoria_usecase.dart';

class UpdateCategoriaUsecaseImp implements UpdateCategoriaUsecase {
  final UpdateCategoriaRepository _updateCategoriaRepository;

  UpdateCategoriaUsecaseImp(this._updateCategoriaRepository);
  @override
  Future<bool> call(Categoria categoria) async {
    return await _updateCategoriaRepository(categoria);
  }
}
