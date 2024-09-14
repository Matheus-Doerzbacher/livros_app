import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:livros_app/layers/data/datasources/emprestimo_datasources/create_emprestimo_datasource.dart';
import 'package:livros_app/layers/domain/entities/emprestimo_entity.dart';

class CreateEmprestimoFirebaseDatasourceImp
    implements CreateEmprestimoDatasource {
  @override
  Future<bool> call(Emprestimo emprestimo) async {
    try {
      final firestore = FirebaseFirestore.instance;
      final emprestimoRef = firestore.collection('emprestimos').doc();

      await emprestimoRef.set({
        'destinatario': emprestimo.destinatario,
        'dataEmprestimo': emprestimo.dataEmprestimo,
        'dataDevolucao': emprestimo.dataDevolucao,
        'dias': emprestimo.dias,
        'status': emprestimo.status.toString(),
      });

      return true;
    } catch (e) {
      return false;
    }
  }
}
