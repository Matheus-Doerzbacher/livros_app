import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:livros_app/layers/data/datasources/livro_datasources/get_livros_datasource.dart';
import 'package:livros_app/layers/domain/entities/livro_entity.dart';

class GetLivrosFirebaseDatasource implements GetLivrosDatasource {
  @override
  Future<List<Livro>> call() async {
    try {
      final firestore = FirebaseFirestore.instance;
      final querySnapshot = await firestore.collection('livros').get();

      final livros = querySnapshot.docs.map((doc) {
        final data = doc.data();
        data['id'] = doc.id;
        return Livro.fromJson(data);
      }).toList();

      return livros;
    } catch (e) {
      return [];
    }
  }
}
