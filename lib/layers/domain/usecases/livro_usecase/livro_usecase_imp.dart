import 'package:livros_app/layers/domain/entities/livro_entity.dart';
import 'package:livros_app/layers/domain/repositories/livro_repository.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/livro_usecase.dart';

class CreateLivroUsecaseImp implements CreateLivroUsecase {
  final CreateLivroRepository _createLivroRepository;

  CreateLivroUsecaseImp(this._createLivroRepository);

  @override
  Future<bool> call(Livro livro) async {
    return await _createLivroRepository(livro);
  }
}

// --------------------------------------------------

class DeleteLivroUsecaseImp implements DeleteLivroUsecase {
  final DeleteLivroRepository _deleteLivroRepository;

  DeleteLivroUsecaseImp(this._deleteLivroRepository);

  @override
  Future<bool> call(String id) async {
    return await _deleteLivroRepository(id);
  }
}

// --------------------------------------------------

class GetLivroByIdUsecaseImp implements GetLivroByIdUsecase {
  final GetLivroByIdRepository _getLivroByIdRepository;

  GetLivroByIdUsecaseImp(this._getLivroByIdRepository);

  @override
  Future<Livro> call(String idLivro) async {
    return await _getLivroByIdRepository(idLivro);
  }
}

// --------------------------------------------------

class GetLivrosUsecaseImp implements GetLivrosUsecase {
  final GetLivrosRepository _getLivrosRepository;

  GetLivrosUsecaseImp(this._getLivrosRepository);

  @override
  Future<List<Livro>> call() async {
    return _getLivrosRepository();
  }
}

// --------------------------------------------------

class UpdateLivroUsecaseImp implements UpdateLivroUsecase {
  final UpdateLivroRepository _updateLivroRepository;

  UpdateLivroUsecaseImp(this._updateLivroRepository);

  @override
  Future<bool> call(Livro livro) async {
    return await _updateLivroRepository(livro);
  }
}
