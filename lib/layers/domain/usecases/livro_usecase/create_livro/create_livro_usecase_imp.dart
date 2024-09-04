import 'package:livros_app/layers/domain/entities/livro_entity.dart';
import 'package:livros_app/layers/domain/repositories/livro_repositories/create_livro_repository.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/create_livro/create_livro_usecase.dart';

class CreateLivroUsecaseImp implements CreateLivroUsecase {
  final CreateLivroRepository _createLivroRepository;

  CreateLivroUsecaseImp(this._createLivroRepository);

  @override
  Future<bool> call(Livro livro) async {
    return await _createLivroRepository(livro);
  }
}
