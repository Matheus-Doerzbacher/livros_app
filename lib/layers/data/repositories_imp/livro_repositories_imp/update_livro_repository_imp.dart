import 'package:livros_app/layers/data/datasources/livro_datasources/update_livro_datasource.dart';
import 'package:livros_app/layers/domain/entities/livro_entity.dart';
import 'package:livros_app/layers/domain/repositories/livro_repository.dart';

class UpdateLivroRepositoryImp implements UpdateLivroRepository {
  final UpdateLivroDatasource _updateLivroDatasource;

  UpdateLivroRepositoryImp(this._updateLivroDatasource);

  @override
  Future<bool> call(Livro livro) async {
    return await _updateLivroDatasource(livro);
  }
}
