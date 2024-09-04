import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:livros_app/layers/domain/entities/livro_entity.dart';
import 'package:livros_app/layers/domain/repositories/livro_repositories/get_by_id_livro_repository.dart';

class GetByIdLivroRepositoryImp implements GetByIdLivroRepository {
  @override
  Future<Livro> call(String idLivro) async {
    try {
      final docRef =
          FirebaseFirestore.instance.collection('livros').doc(idLivro);
      final docSnapshot = await docRef.get();

      if (docSnapshot.exists) {
        final data = docSnapshot.data() as Map<String, dynamic>;
        return Livro.fromJson(data);
      } else {
        throw Exception('Livro não encontrado');
      }
    } catch (e) {
      throw Exception('Erro ao buscar livro: $e');
    }
  }
}
