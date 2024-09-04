import 'package:livros_app/layers/domain/entities/livro_entity.dart';
import 'package:livros_app/layers/domain/repositories/livro_repositories/get_by_id_livro_repository.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/get_by_id_livro/get_by_id_livro_usecases.dart';

class GetByIdLivroUsecasesImp implements GetByIdLivroUsecases {
  final GetByIdLivroRepository _getByIdLivroRepository;

  GetByIdLivroUsecasesImp(this._getByIdLivroRepository);

  @override
  Future<Livro> call(String idLivro) async {
    return await _getByIdLivroRepository(idLivro);
  }
}

    // return Livro(
    //   id: id,
    //   titulo: 'Livro Exemplo',
    //   autor: 'Autor Desconhecido',
    //   paginas: 200,
    //   ano: 2023,
    //   estoque: 10,
    //   avaliacao: 4,
    //   editora: 'Editora Exemplo',
    //   categorias: [],
    //   descricao: 'Uma descrição exemplo do livro.',
    //   status: StatusLeitura.queroLer,
    //   urlImage: 'https://exemplo.com/imagem.jpg',
    // );