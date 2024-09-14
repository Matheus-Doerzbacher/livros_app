import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:livros_app/layers/data/datasources/categoria_datasources/categoria_datasource.dart';
import 'package:livros_app/layers/domain/entities/categoria_entity.dart';

class UpdateCategoriaFirebaseDatasourceImp
    implements UpdateCategoriaDatasource {
  @override
  Future<bool> call(Categoria categoria) async {
    try {
      final firestore = FirebaseFirestore.instance;
      await firestore.collection('categorias').doc(categoria.id).update({
        'nome': categoria.nome,
      });
      return true;
    } catch (e) {
      return false;
    }
  }
}
