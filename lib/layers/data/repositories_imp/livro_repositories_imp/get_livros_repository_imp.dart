import 'package:livros_app/layers/data/datasources/livro_datasources/get_livros_datasource.dart';
import 'package:livros_app/layers/domain/entities/livro_entity.dart';
import 'package:livros_app/layers/domain/repositories/livro_repository.dart';

class GetLivrosRepositoryImp implements GetLivrosRepository {
  final GetLivrosDatasource _getLivrosDatasource;

  GetLivrosRepositoryImp(this._getLivrosDatasource);
  @override
  Future<List<Livro>> call() async {
    return await _getLivrosDatasource();
  }
}
