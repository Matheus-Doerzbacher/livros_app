import 'package:livros_app/layers/domain/entities/livro_entity.dart';

abstract class CreateLivroRepository {
  Future<bool> call(Livro livro);
}
