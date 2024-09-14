import 'package:livros_app/layers/data/datasources/livro_datasources/create_livro_datasource.dart';
import 'package:livros_app/layers/domain/entities/livro_entity.dart';
import 'package:livros_app/layers/domain/repositories/livro_repository.dart';

class CreateLivroRepositoryImp implements CreateLivroRepository {
  final CreateLivroDatasource _createLivroDatasource;

  CreateLivroRepositoryImp(this._createLivroDatasource);

  @override
  Future<bool> call(Livro livro) async {
    return await _createLivroDatasource(livro);
  }
}
