import 'package:livros_app/layers/domain/entities/emprestimo_entity.dart';

abstract class CreateEmprestimoDatasource {
  Future<bool> call(Emprestimo emprestimo);
}
