import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:livros_app/layers/data/datasources/emprestimo_datasources/emprestimo_datasource.dart';
import 'package:livros_app/layers/domain/entities/emprestimo_entity.dart';

class GetEmprestimosFirebaseDatasourceImp implements GetEmprestimosDatasource {
  @override
  Future<List<Emprestimo>> call() async {
    final firestore = FirebaseFirestore.instance;
    final emprestimosRef = firestore.collection('emprestimos');

    final snapshot = await emprestimosRef.get();

    if (snapshot.docs.isNotEmpty) {
      return snapshot.docs.map((doc) {
        final data = doc.data();
        return Emprestimo.fromJson(data);
      }).toList();
    } else {
      return [];
    }
  }
}
