import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:livros_app/layers/data/datasources/categoria_datasources/categoria_datasource.dart';

class DeleteCategoriaFirebaseDatasourceImp
    implements DeleteCategoriaDatasource {
  @override
  Future<bool> call(String idCategoria) async {
    try {
      final firestore = FirebaseFirestore.instance;
      await firestore.collection('categorias').doc(idCategoria).delete();
      return true;
    } catch (e) {
      return false;
    }
  }
}
