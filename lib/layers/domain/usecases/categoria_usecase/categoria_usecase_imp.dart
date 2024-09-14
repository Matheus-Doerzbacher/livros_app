import 'package:livros_app/layers/domain/entities/categoria_entity.dart';
import 'package:livros_app/layers/domain/repositories/categoria_repositories/create_categoria_repository.dart';
import 'package:livros_app/layers/domain/repositories/categoria_repositories/delete_categoria_repository.dart';
import 'package:livros_app/layers/domain/repositories/categoria_repositories/get_categorias_repository.dart';
import 'package:livros_app/layers/domain/repositories/categoria_repositories/update_categoria_repository.dart';
import 'package:livros_app/layers/domain/usecases/categoria_usecase/categoria_usecase.dart';

class CreateCategoriaUsecaseImp implements CreateCategoriaUsecase {
  final CreateCategoriaRepository _createCategoriaRepository;

  CreateCategoriaUsecaseImp(this._createCategoriaRepository);
  @override
  Future<bool> call(Categoria categoria) async {
    return await _createCategoriaRepository(categoria);
  }
}

class DeleteCategoriaUsecaseImp implements DeleteCategoriaUsecase {
  final DeleteCategoriaRepository _deleteCategoriaRepository;

  DeleteCategoriaUsecaseImp(this._deleteCategoriaRepository);
  @override
  Future<bool> call(String idCategoria) async {
    return await _deleteCategoriaRepository(idCategoria);
  }
}

class GetCategoriasUsecaseImp implements GetCategoriasUsecase {
  final GetCategoriasRepository _getCategoriasRepository;

  GetCategoriasUsecaseImp(this._getCategoriasRepository);

  @override
  Future<List<Categoria>> call() async {
    return await _getCategoriasRepository();
  }
}

class UpdateCategoriaUsecaseImp implements UpdateCategoriaUsecase {
  final UpdateCategoriaRepository _updateCategoriaRepository;

  UpdateCategoriaUsecaseImp(this._updateCategoriaRepository);
  @override
  Future<bool> call(Categoria categoria) async {
    return await _updateCategoriaRepository(categoria);
  }
}
