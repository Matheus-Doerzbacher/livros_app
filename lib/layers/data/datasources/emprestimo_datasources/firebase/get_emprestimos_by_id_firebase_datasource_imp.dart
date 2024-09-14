import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:livros_app/layers/data/datasources/emprestimo_datasources/emprestimo_datasource.dart';
import 'package:livros_app/layers/domain/entities/emprestimo_entity.dart';

class GetEmprestimosByIdFirebaseDatasourceImp
    implements GetEmprestimoByIdDatasource {
  @override
  Future<Emprestimo> call(String idEmprestimo) async {
    final firestore = FirebaseFirestore.instance;
    final emprestimoRef = firestore.collection('emprestimos').doc(idEmprestimo);

    final snapshot = await emprestimoRef.get();

    if (snapshot.exists) {
      final data = snapshot.data()!;
      return Emprestimo.fromJson(data);
    } else {
      throw Exception('Empréstimo não encontrado');
    }
  }
}
