import 'package:livros_app/layers/data/datasources/livro_datasources/get_livro_by_id_datasource.dart';
import 'package:livros_app/layers/domain/entities/livro_entity.dart';
import 'package:livros_app/layers/domain/repositories/livro_repositories/get_livro_by_id_repository.dart';

class GetLivroByIdRepositoryImp implements GetLivroByIdRepository {
  final GetLivroByIdDatasource _getLivroByIdDatasource;

  GetLivroByIdRepositoryImp(this._getLivroByIdDatasource);
  @override
  Future<Livro> call(String idLivro) async {
    return await _getLivroByIdDatasource(idLivro);
  }
}
