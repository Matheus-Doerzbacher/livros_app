import 'package:livros_app/layers/domain/entities/livro_entity.dart';

abstract class GetByIdLivroRepository {
  Future<Livro> call(String idLivro);
}
