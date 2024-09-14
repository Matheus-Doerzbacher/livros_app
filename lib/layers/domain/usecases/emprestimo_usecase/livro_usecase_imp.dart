import 'package:livros_app/layers/domain/entities/emprestimo_entity.dart';
import 'package:livros_app/layers/domain/repositories/emprestimo_repositories/create_emprestimo_respository.dart';
import 'package:livros_app/layers/domain/usecases/emprestimo_usecase/livro_usecase.dart';

class CreateEmprestimoUsecaseImp implements CreateEmprestimoUsecase {
  final CreateEmprestimoRepository _createEmprestimoRepository;

  CreateEmprestimoUsecaseImp(this._createEmprestimoRepository);

  @override
  Future<bool> call(Emprestimo emprestimo) async {
    return await _createEmprestimoRepository(emprestimo);
  }
}
