import 'package:livros_app/layers/domain/entities/emprestimo_entity.dart';

abstract class CreateEmprestimoRepository {
  Future<bool> call(Emprestimo emprestimo);
}
