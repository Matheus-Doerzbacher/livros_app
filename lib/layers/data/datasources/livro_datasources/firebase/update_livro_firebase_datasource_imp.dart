import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:livros_app/layers/data/datasources/livro_datasources/livro_datasource.dart';
import 'package:livros_app/layers/domain/entities/livro_entity.dart';

class UpdateLivroFirebaseDatasourceImp implements UpdateLivroDatasource {
  @override
  Future<bool> call(Livro livro) async {
    try {
      await FirebaseFirestore.instance
          .collection('livros')
          .doc(livro.id)
          .update(livro.toJson());
      return true;
    } catch (e) {
      return false;
    }
  }
}
