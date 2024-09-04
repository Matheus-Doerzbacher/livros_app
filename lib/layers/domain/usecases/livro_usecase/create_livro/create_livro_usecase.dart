import 'package:livros_app/layers/domain/entities/livro_entity.dart';

abstract class CreateLivroUsecase {
  Future<bool> call(Livro livro);
}
