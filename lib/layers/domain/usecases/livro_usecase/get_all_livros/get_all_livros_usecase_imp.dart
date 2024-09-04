import 'package:livros_app/layers/domain/entities/livro_entity.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/get_all_livros/get_all_livros_usecase.dart';

class GetAllLivrosUsecaseImp implements GetAllLivrosUsecase {
  @override
  List<Livro> call() {
    // Aqui você deve implementar a lógica para obter todos os livros
    // Por enquanto, retornaremos uma lista vazia
    return [];
  }
}
