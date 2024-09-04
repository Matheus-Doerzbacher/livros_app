import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:livros_app/layers/domain/entities/livro_entity.dart';
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
    controller = GetIt.I.get<LivroController>();
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
