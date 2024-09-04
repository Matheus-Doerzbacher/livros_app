import 'package:livros_app/layers/domain/entities/categoria_entity.dart';

abstract class UpdateCategoriaRepository {
  Future<bool> call(Categoria categoria);
}
