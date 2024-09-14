import 'package:livros_app/layers/domain/entities/livro_entity.dart';

abstract class UpdateLivroUsecase {
  Future<bool> call(Livro livro);
}
