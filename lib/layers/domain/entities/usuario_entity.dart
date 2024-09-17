class Usuario {
  final String id;
  final String nome;
  final String email;
  final String urlImage;

  const Usuario({
    required this.nome,
    required this.email,
    required this.urlImage,
    required this.id,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      id: json['id'] as String,
      nome: json['nome'] as String,
      email: json['email'] as String,
      urlImage: json['urlImage'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'email': email,
      'urlImage': urlImage,
    };
  }
}
