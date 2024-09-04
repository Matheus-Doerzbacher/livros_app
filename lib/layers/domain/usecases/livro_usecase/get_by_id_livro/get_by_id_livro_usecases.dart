import 'package:livros_app/layers/domain/entities/livro_entity.dart';

abstract class GetByIdLivroUsecases {
  Future<Livro> call(String id);
}
