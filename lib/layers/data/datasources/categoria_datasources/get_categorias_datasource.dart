import 'package:livros_app/layers/domain/entities/categoria_entity.dart';

abstract class GetCategoriasDatasource {
  Future<List<Categoria>> call();
}
