// ignore_for_file: avoid_print

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:livros_app/firebase/firebase.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Livros',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Livro App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();
  List<Map<String, dynamic>> _tarefas = [];

  @override
  void initState() {
    super.initState();
    _carregarTarefas();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _alterarStatusTarefa(String tarefaId, bool concluida) async {
    try {
      await alterarStatusTarefa(tarefaId, concluida);
      await _carregarTarefas();
    } catch (e) {
      print('Erro ao alterar status da tarefa: $e');
    }
  }

  Future<void> _deletarTarefa(String tarefaId) async {
    try {
      await deletarTarefa(tarefaId);
      await _carregarTarefas();
    } catch (e) {
      print('Erro ao deletar tarefa');
    }
  }

  Future<void> _carregarTarefas() async {
    try {
      List<Map<String, dynamic>> tarefas = await carregarTarefas();
      setState(() {
        _tarefas = tarefas;
      });
    } catch (e) {
      if (kDebugMode) {
        print('Erro ao carregar tarefas: $e');
      }
    }
  }

  Future<void> onSubmit(String tarefa) async {
    try {
      await adicionarTarefa(tarefa);
      await _carregarTarefas();
    } catch (e) {
      if (kDebugMode) {
        print('Erro ao adicionar tarefa: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Adicionar tarefa',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (value) {
                if (value.isNotEmpty) {
                  onSubmit(value);
                  _controller.clear();
                }
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _tarefas.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_tarefas[index]['texto']),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        value: _tarefas[index]['concluida'],
                        onChanged: (bool? value) {
                          _alterarStatusTarefa(
                              _tarefas[index]['idTarefa'], value ?? false);
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          _deletarTarefa(_tarefas[index]['idTarefa']);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
