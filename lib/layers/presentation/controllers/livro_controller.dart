import 'package:livros_app/layers/data/datasources/livro_datasources/get_livros_datasource.dart';
import 'package:livros_app/layers/domain/entities/livro_entity.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/create_livro/create_livro_usecase.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/get_livro_by_id/get_livro_by_id_usecase.dart';

class LivroController {
  final GetLivroByIdUsecase _getLivroByIdUsecase;
  final GetLivrosDatasource _getLivrosDatasource;
  final CreateLivroUsecase _createLivroUsecase;

  LivroController(
    this._getLivroByIdUsecase,
    this._getLivrosDatasource,
    this._createLivroUsecase,
  );

  getLivroById(String idLivro) async {
    return await _getLivroByIdUsecase(idLivro);
  }

  getLivros() async {
    return await _getLivrosDatasource();
  }

  createLivro(Livro livro) async {
    return await _createLivroUsecase(livro);
  }
}
