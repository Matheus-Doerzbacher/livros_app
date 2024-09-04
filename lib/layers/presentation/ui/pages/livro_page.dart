import 'package:flutter/material.dart';
import 'package:livros_app/layers/data/datasources/livro_datasources/firebase/create_livro_firebase_datasource_imp.dart';
import 'package:livros_app/layers/data/datasources/livro_datasources/firebase/get_livro_by_id_firebase_datasource_imp.dart';
import 'package:livros_app/layers/data/datasources/livro_datasources/firebase/get_livros_firebase_datasource_imp.dart';
import 'package:livros_app/layers/data/repositories/livro_repositories_imp/create_livro_repository_imp.dart';
import 'package:livros_app/layers/data/repositories/livro_repositories_imp/get_livro_by_id_repository_imp.dart';
import 'package:livros_app/layers/data/repositories/livro_repositories_imp/get_livros_repository_imp.dart';
import 'package:livros_app/layers/domain/entities/livro_entity.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/create_livro/create_livro_usecase_imp.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/get_livro_by_id/get_livro_by_id_usecase_imp.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/get_livros/get_livros_usecase_imp.dart';
import 'package:livros_app/layers/presentation/controllers/livro_controller.dart';

class LivroPage extends StatefulWidget {
  const LivroPage({super.key});

  @override
  State<LivroPage> createState() => _LivroPageState();
}

class _LivroPageState extends State<LivroPage> {
  late LivroController controller;

  @override
  void initState() {
    super.initState();
    controller = LivroController(
      GetLivroByIdUsecaseImp(
        GetLivroByIdRepositoryImp(
          GetLivroByIdFirebaseDatasourceImp(),
        ),
      ),
      GetLivrosUsecaseImp(
        GetLivrosRepositoryImp(
          GetLivrosFirebaseDatasourceImp(),
        ),
      ),
      CreateLivroUsecaseImp(
        CreateLivroRepositoryImp(
          CreateLivroFirebaseDatasourceImp(),
        ),
      ),
    );
  }

  void _adicionarLivro() {
    Livro livro = Livro(
      autor: 'Nome do Autor',
      titulo: 'Como cagar em pé',
      paginas: 3054,
      ano: 2065,
    );
    controller.createLivro(livro);
    setState(() {
      controller.getLivros();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Livros'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              _adicionarLivro();
            },
            child: const Text('Adicionar um livro'),
          ),
          Expanded(
            child: FutureBuilder<void>(
              future: controller.getLivros(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Erro: ${snapshot.error}'));
                } else {
                  return ListView.builder(
                    itemCount: controller.livros.length,
                    itemBuilder: (context, index) {
                      final livro = controller.livros[index];
                      return ListTile(
                        title: Text(livro.titulo),
                        subtitle: Text(livro.autor),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
