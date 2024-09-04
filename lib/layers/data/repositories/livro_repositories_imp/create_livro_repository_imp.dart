import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:livros_app/layers/domain/entities/livro_entity.dart';
import 'package:livros_app/layers/domain/repositories/livro_repositories/create_livro_repository.dart';

class CreateLivroRepositoryImp implements CreateLivroRepository {
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
