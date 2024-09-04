import 'package:livros_app/layers/domain/entities/livro_entity.dart';

abstract class GetAllLivrosRepository {
  Future<List<Livro>> call();
}
