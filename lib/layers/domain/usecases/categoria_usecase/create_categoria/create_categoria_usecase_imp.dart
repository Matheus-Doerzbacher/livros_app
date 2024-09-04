import 'package:livros_app/layers/domain/entities/categoria_entity.dart';
import 'package:livros_app/layers/domain/repositories/categoria_repositories/create_categoria_repository.dart';
import 'package:livros_app/layers/domain/usecases/categoria_usecase/create_categoria/create_categoria_usecase.dart';

class CreateCategoriaUsecaseImp implements CreateCategoriaUsecase {
  final CreateCategoriaRepository _createCategoriaRepository;

  CreateCategoriaUsecaseImp(this._createCategoriaRepository);
  @override
  Future<bool> call(Categoria categoria) async {
    return await _createCategoriaRepository(categoria);
  }
}
