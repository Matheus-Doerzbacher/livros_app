import 'package:livros_app/layers/domain/entities/livro_entity.dart';

abstract class GetLivroByIdUsecase {
  Future<Livro> call(String id);
}
