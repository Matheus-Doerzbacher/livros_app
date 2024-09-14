import 'package:livros_app/layers/domain/entities/livro_entity.dart';

abstract class CreateLivroUsecase {
  Future<bool> call(Livro livro);
}

abstract class DeleteLivroUsecase {
  Future<bool> call(String id);
}

abstract class GetLivroByIdUsecase {
  Future<Livro> call(String id);
}

abstract class GetLivrosUsecase {
  Future<List<Livro>> call();
}

abstract class UpdateLivroUsecase {
  Future<bool> call(Livro livro);
}
