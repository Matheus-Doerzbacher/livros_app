import 'package:livros_app/layers/domain/entities/livro_entity.dart';

abstract class GetAllLivrosUsecase {
  List<Livro> call();
}
