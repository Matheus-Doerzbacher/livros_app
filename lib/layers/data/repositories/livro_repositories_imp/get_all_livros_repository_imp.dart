import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:livros_app/layers/domain/entities/livro_entity.dart';
import 'package:livros_app/layers/domain/repositories/livro_repositories/get_all_livros_repository.dart';

class GetAllLivrosRepositoryImp implements GetAllLivrosRepository {
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
