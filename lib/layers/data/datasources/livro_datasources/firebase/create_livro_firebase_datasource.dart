import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:livros_app/layers/data/datasources/livro_datasources/create_livro_datasource.dart';
import 'package:livros_app/layers/domain/entities/livro_entity.dart';

class CreateLivroFirebaseDatasource implements CreateLivroDatasource {
  @override
  Future<bool> call(Livro livro) async {
    try {
      final firestore = FirebaseFirestore.instance;
      final livroJson = livro.toJson();

      await firestore.collection('livros').add(livroJson);

      return true;
    } catch (e) {
      return false;
    }
  }
}
