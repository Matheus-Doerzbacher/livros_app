// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> adicionarTarefa(String tarefa) async {
  try {
    await FirebaseFirestore.instance.collection('tarefas').add({
      'texto': tarefa,
      'concluida': false,
      'dataCriacao': FieldValue.serverTimestamp(),
    });
    print('Tarefa adicionada com sucesso!');
  } catch (e) {
    print('Erro ao adicionar tarefa: $e');
  }
}

Future<List<Map<String, dynamic>>> carregarTarefas() async {
  try {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('tarefas')
        .orderBy('dataCriacao', descending: true)
        .get();

    return querySnapshot.docs.map((doc) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      data['idTarefa'] = doc.id; // Adiciona o ID do documento como idTarefa
      return data;
    }).toList();
  } catch (e) {
    print('Erro ao carregar tarefas: $e');
    return [];
  }
}

Future<void> deletarTarefa(String tarefaId) async {
  try {
    await FirebaseFirestore.instance
        .collection('tarefas')
        .doc(tarefaId)
        .delete();
    print('Tarefa deletada com sucesso!');
  } catch (e) {
    print('Erro ao deletar tarefa: $e');
  }
}

Future<void> alterarStatusTarefa(String tarefaId, bool concluida) async {
  try {
    await FirebaseFirestore.instance
        .collection('tarefas')
        .doc(tarefaId)
        .update({'concluida': concluida});
    print('Status da tarefa alterado com sucesso!');
  } catch (e) {
    print('Erro ao alterar status da tarefa: $e');
  }
}
