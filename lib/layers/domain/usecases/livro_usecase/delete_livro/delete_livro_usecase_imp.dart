import 'package:livros_app/layers/domain/repositories/livro_repositories/delete_livro_repository.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/delete_livro/delete_livro_usecase.dart';

class DeleteLivroUsecaseImp implements DeleteLivroUsecase {
  final DeleteLivroRepository _deleteLivroRepository;

  DeleteLivroUsecaseImp(this._deleteLivroRepository);

  @override
  Future<bool> call(String id) async {
    return await _deleteLivroRepository(id);
  }
}
