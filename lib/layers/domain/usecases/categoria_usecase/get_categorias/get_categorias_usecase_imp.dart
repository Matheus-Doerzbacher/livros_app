import 'package:livros_app/layers/domain/entities/categoria_entity.dart';
import 'package:livros_app/layers/domain/repositories/categoria_repositories/get_categorias_repository.dart';
import 'package:livros_app/layers/domain/usecases/categoria_usecase/get_categorias/get_categorias_usecase.dart';

class GetCategoriasUsecaseImp implements GetCategoriasUsecase {
  final GetCategoriasRepository _getCategoriasRepository;

  GetCategoriasUsecaseImp(this._getCategoriasRepository);

  @override
  Future<List<Categoria>> call() async {
    return await _getCategoriasRepository();
  }
}
