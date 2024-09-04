import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:livros_app/layers/data/datasources/livro_datasources/get_livro_by_id_datasource.dart';
import 'package:livros_app/layers/domain/entities/livro_entity.dart';

class GetLivroByIdFirebaseDatasource implements GetLivroByIdDatasource {
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
