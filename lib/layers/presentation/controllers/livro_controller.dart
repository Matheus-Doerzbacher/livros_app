import 'package:livros_app/layers/domain/entities/livro_entity.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/create_livro/create_livro_usecase.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/get_livro_by_id/get_livro_by_id_usecase.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/get_livros/get_livros_usecase.dart';

class LivroController {
  final GetLivroByIdUsecase _getLivroByIdUsecase;
  final GetLivrosUsecase _getLivrosUsecase;
  final CreateLivroUsecase _createLivroUsecase;

  LivroController(
    this._getLivroByIdUsecase,
    this._getLivrosUsecase,
    this._createLivroUsecase,
  ) {
    getLivros();
  }

  late List<Livro> livros;

  getLivroById(String idLivro) async {
    return await _getLivroByIdUsecase(idLivro);
  }

  getLivros() async {
    livros = await _getLivrosUsecase();
  }

  createLivro(Livro livro) async {
    return await _createLivroUsecase(livro);
  }
}
