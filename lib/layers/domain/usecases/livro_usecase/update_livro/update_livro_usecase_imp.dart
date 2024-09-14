import 'package:livros_app/layers/domain/entities/livro_entity.dart';
import 'package:livros_app/layers/domain/repositories/livro_repositories/update_livro_repository.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/update_livro/update_livro_usecase.dart';

class UpdateLivroUsecaseImp implements UpdateLivroUsecase {
  final UpdateLivroRepository _updateLivroRepository;

  UpdateLivroUsecaseImp(this._updateLivroRepository);

  @override
  Future<bool> call(Livro livro) async {
    return await _updateLivroRepository(livro);
  }
}
