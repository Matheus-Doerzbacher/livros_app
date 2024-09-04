import 'package:livros_app/layers/domain/entities/categoria_entity.dart';
import 'package:livros_app/layers/domain/usecases/categoria_usecase/create_categoria/create_categoria_usecase.dart';

class CreateCategoriaUsecaseImp implements CreateCategoriaUsecase {
  @override
  Future<bool> call(Categoria categoria) async {
    return false;
  }
}
