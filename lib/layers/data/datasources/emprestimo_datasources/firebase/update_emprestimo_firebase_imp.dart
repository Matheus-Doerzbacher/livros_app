import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:livros_app/layers/data/datasources/emprestimo_datasources/emprestimo_datasource.dart';
import 'package:livros_app/layers/domain/entities/emprestimo_entity.dart';

class UpdateEmprestimoFirebaseDatasourceImp
    implements UpdateEmprestimoDatasource {
  @override
  Future<bool> call(Emprestimo emprestimo) async {
    try {
      final firestore = FirebaseFirestore.instance;
      final emprestimoRef = firestore.collection('emprestimos').doc();

      await emprestimoRef.set(emprestimo.toJson());

      return true;
    } catch (e) {
      return false;
    }
  }
}
