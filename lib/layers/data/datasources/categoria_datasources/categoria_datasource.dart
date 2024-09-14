import 'package:livros_app/layers/domain/entities/categoria_entity.dart';

abstract class CreateCategoriaDatasource {
  Future<bool> call(Categoria categoria);
}

abstract class DeleteCategoriaDatasource {
  Future<bool> call(String idCategoria);
}

abstract class GetCategoriasDatasource {
  Future<List<Categoria>> call();
}

abstract class UpdateCategoriaDatasource {
  Future<bool> call(Categoria categoria);
}
