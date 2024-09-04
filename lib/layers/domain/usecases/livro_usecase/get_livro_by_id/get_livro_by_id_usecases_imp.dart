import 'package:livros_app/layers/domain/entities/livro_entity.dart';
import 'package:livros_app/layers/domain/repositories/livro_repositories/get_livro_by_id_repository.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/get_livro_by_id/get_livro_by_id_usecases.dart';

class GetLivroByIdUsecasesImp implements GetLivroByIdUsecases {
  final GetLivroByIdRepository _getLivroByIdRepository;

  GetLivroByIdUsecasesImp(this._getLivroByIdRepository);

  @override
  Future<Livro> call(String idLivro) async {
    return await _getLivroByIdRepository(idLivro);
  }
}
