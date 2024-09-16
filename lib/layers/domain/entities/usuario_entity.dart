class Usuario {
  final String nome;
  final String email;
  final String urlImage;

  const Usuario(
      {required this.nome, required this.email, required this.urlImage});

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      nome: json['nome'] as String,
      email: json['email'] as String,
      urlImage: json['urlImage'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'email': email,
      'urlImage': urlImage,
    };
  }
}
