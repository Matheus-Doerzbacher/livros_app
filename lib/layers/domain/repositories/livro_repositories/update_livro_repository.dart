import 'package:livros_app/layers/domain/entities/livro_entity.dart';

abstract class UpdateLivroRepository {
  Future<bool> call(Livro livro);
}
