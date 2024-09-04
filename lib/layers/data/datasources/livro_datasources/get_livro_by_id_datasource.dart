import 'package:livros_app/layers/domain/entities/livro_entity.dart';

abstract class GetLivroByIdDatasource {
  Future<Livro> call(String idLivro);
}
