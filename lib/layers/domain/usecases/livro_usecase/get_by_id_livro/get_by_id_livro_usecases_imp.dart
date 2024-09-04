import 'package:livros_app/layers/domain/entities/livro_entity.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/get_by_id_livro/get_by_id_livro_usecases.dart';

class GetByIdLivroUsecasesImp implements GetByIdLivroUsecases {
  @override
  Livro call(String id) {
    // Por enquanto, retornaremos um livro fictício
    // Em uma implementação real, buscaríamos o livro pelo ID
    return Livro(
      id: id,
      titulo: 'Livro Exemplo',
      autor: 'Autor Desconhecido',
      paginas: 200,
      ano: 2023,
      estoque: 10,
      avaliacao: 4,
      editora: 'Editora Exemplo',
      categorias: [],
      descricao: 'Uma descrição exemplo do livro.',
      status: StatusLeitura.queroLer,
      urlImage: 'https://exemplo.com/imagem.jpg',
    );
  }
}
