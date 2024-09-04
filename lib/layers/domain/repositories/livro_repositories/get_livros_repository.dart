import 'package:livros_app/layers/domain/entities/livro_entity.dart';

abstract class GetLivrosRepository {
  Future<List<Livro>> call();
}
