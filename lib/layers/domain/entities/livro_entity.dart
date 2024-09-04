import 'package:livros_app/layers/domain/entities/categoria_entity.dart';

enum StatusLeitura {
  lendo,
  lido,
  queroLer,
}

class Livro {
  String? id;
  final String autor;
  final String titulo;
  final int paginas;
  final int estoque;
  final int avaliacao;
  final String editora;
  final int ano;
  final List<Categoria> categorias;
  final String descricao;
  final StatusLeitura status;
  final String urlImage;

  Livro({
    this.id,
    required this.autor,
    required this.titulo,
    required this.paginas,
    this.estoque = 0,
    this.avaliacao = 0,
    this.editora = '',
    required this.ano,
    this.categorias = const [],
    this.descricao = '',
    this.status = StatusLeitura.queroLer,
    this.urlImage = '',
  });
}
