import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:livros_app/layers/data/datasources/emprestimo_datasources/emprestimo_datasource.dart';

class DeleteEmprestimoFirebaseImp implements DeleteEmprestimoDatasource {
  @override
  Future<bool> call(String idEmprestimo) async {
    final firestore = FirebaseFirestore.instance;
    final emprestimoRef = firestore.collection('emprestimos').doc(idEmprestimo);

    try {
      await emprestimoRef.delete();
      return true;
    } catch (e) {
      return false;
    }
  }
}
