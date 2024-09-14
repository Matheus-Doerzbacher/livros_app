import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:livros_app/layers/data/datasources/categoria_datasources/categoria_datasource.dart';
import 'package:livros_app/layers/domain/entities/categoria_entity.dart';

class GetCategoriasFirebaseDatasourceImp implements GetCategoriasDatasource {
  @override
  Future<List<Categoria>> call() async {
    try {
      final firestore = FirebaseFirestore.instance;
      final querySnapshot = await firestore.collection('categorias').get();

      return querySnapshot.docs.map((doc) {
        final data = doc.data();
        return Categoria.fromJson({...data, 'id': doc.id});
      }).toList();
    } catch (e) {
      return [];
    }
  }
}
