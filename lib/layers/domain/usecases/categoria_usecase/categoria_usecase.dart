import 'package:livros_app/layers/domain/entities/categoria_entity.dart';

abstract class CreateCategoriaUsecase {
  Future<bool> call(Categoria categoria);
}

abstract class DeleteCategoriaUsecase {
  Future<bool> call(String idCategoria);
}

abstract class GetCategoriasUsecase {
  Future<List<Categoria>> call();
}

abstract class UpdateCategoriaUsecase {
  Future<bool> call(Categoria categoria);
}
