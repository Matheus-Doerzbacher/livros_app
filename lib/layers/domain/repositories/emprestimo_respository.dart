import 'package:livros_app/layers/domain/entities/emprestimo_entity.dart';

abstract class CreateEmprestimoRepository {
  Future<bool> call(Emprestimo emprestimo);
}

abstract class GetEmprestimoByIdRepository {
  Future<Emprestimo> call(String idEmprestimo);
}

abstract class GetEmprestimosRepository {
  Future<List<Emprestimo>> call();
}

abstract class DeleteEmprestimoRepository {
  Future<bool> call(String idEmprestimo);
}

abstract class UpdateEmprestimoRepository {
  Future<bool> call(Emprestimo emprestimo);
}
