import 'package:livros_app/layers/domain/entities/categoria_entity.dart';
import 'package:livros_app/layers/domain/usecases/categoria_usecase/get_categorias/get_categorias_usecase.dart';

class GetCategoriasUsecaseImp implements GetCategoriasUsecase {
  @override
  Future<List<Categoria>> call() async {
    return [];
  }
}
