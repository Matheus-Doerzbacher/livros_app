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

  factory Livro.fromJson(Map<String, dynamic> json) {
    return Livro(
      id: json['id'],
      autor: json['autor'],
      titulo: json['titulo'],
      paginas: json['paginas'],
      estoque: json['estoque'] ?? 0,
      avaliacao: json['avaliacao'] ?? 0,
      editora: json['editora'] ?? '',
      ano: json['ano'],
      categorias: (json['categorias'] as List<dynamic>?)
              ?.map((e) => Categoria.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      descricao: json['descricao'] ?? '',
      status: StatusLeitura.values.firstWhere(
        (e) => e.toString() == 'StatusLeitura.${json['status']}',
        orElse: () => StatusLeitura.queroLer,
      ),
      urlImage: json['urlImage'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'autor': autor,
      'titulo': titulo,
      'paginas': paginas,
      'estoque': estoque,
      'avaliacao': avaliacao,
      'editora': editora,
      'ano': ano,
      'categorias': categorias.map((e) => e.toJson()).toList(),
      'descricao': descricao,
      'status': status.toString().split('.').last,
      'urlImage': urlImage,
    };
  }
}
