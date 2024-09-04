import 'package:livros_app/layers/domain/entities/livro_entity.dart';

abstract class GetLivrosDatasource {
  Future<List<Livro>> call();
}
