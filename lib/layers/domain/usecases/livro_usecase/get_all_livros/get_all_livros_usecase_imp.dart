import 'package:livros_app/layers/domain/entities/livro_entity.dart';
import 'package:livros_app/layers/domain/repositories/livro_repositories/get_all_livros_repository.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/get_all_livros/get_all_livros_usecase.dart';

class GetAllLivrosUsecaseImp implements GetAllLivrosUsecase {
  final GetAllLivrosRepository _getAllLivrosRepository;

  GetAllLivrosUsecaseImp(this._getAllLivrosRepository);
  @override
  Future<List<Livro>> call() async {
    return _getAllLivrosRepository();
  }
}
