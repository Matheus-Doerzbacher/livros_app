import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:livros_app/layers/data/datasources/livro_datasources/delete_livro_datasource.dart';

class DeleteLivroFirebaseDatasourceImp implements DeleteLivroDatasource {
  @override
  Future<bool> call(String id) async {
    try {
      await FirebaseFirestore.instance.collection('livros').doc(id).delete();
      return true;
    } catch (e) {
      return false;
    }
  }
}
