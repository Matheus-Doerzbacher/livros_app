import 'package:livros_app/layers/domain/entities/categoria_entity.dart';

abstract class GetCategoriasRepository {
  Future<List<Categoria>> call();
}
