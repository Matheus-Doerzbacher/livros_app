import 'package:livros_app/layers/domain/entities/livro_entity.dart';
import 'package:livros_app/layers/domain/repositories/livro_repositories/get_livros_repository.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/get_livros/get_livros_usecase.dart';

class GetLivrosUsecaseImp implements GetLivrosUsecase {
  final GetLivrosRepository _getLivrosRepository;

  GetLivrosUsecaseImp(this._getLivrosRepository);
  @override
  Future<List<Livro>> call() async {
    return _getLivrosRepository();
  }
}
