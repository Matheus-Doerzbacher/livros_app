import 'package:livros_app/layers/domain/entities/categoria_entity.dart';

abstract class GetCategoriasUsecase {
  Future<List<Categoria>> call();
}
