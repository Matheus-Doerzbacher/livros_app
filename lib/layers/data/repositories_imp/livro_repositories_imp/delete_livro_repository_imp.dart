import 'package:livros_app/layers/data/datasources/livro_datasources/delete_livro_datasource.dart';
import 'package:livros_app/layers/domain/repositories/livro_repository.dart';

class DeleteLivroRepositoryImp implements DeleteLivroRepository {
  final DeleteLivroDatasource _deleteLivroDatasource;

  DeleteLivroRepositoryImp(this._deleteLivroDatasource);

  @override
  Future<bool> call(String id) async {
    return await _deleteLivroDatasource(id);
  }
}
