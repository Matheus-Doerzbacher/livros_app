import 'package:livros_app/layers/domain/entities/categoria_entity.dart';
import 'package:livros_app/layers/domain/usecases/categoria_usecase/update_categoria/update_categoria_usecase.dart';

class UpdateCategoriaUsecaseImp implements UpdateCategoriaUsecase {
  @override
  Future<bool> call(Categoria categoria) async {
    return false;
  }
}
