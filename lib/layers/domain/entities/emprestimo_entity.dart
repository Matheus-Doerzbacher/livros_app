import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:livros_app/layers/data/datasources/emprestimo_datasources/emprestimo_datasource.dart';
import 'package:livros_app/layers/domain/entities/livro_entity.dart';

enum StatusEmprestimo { emprestado, atrasado, devolvido }

class Emprestimo {
  final Livro livro;
  final String destinatario;
  final DateTime dataEmprestimo;
  final DateTime? dataDevolucao;
  final int dias;
  StatusEmprestimo status;

  Emprestimo({
    required this.livro,
    required this.destinatario,
    DateTime? dataEmprestimo,
    this.dataDevolucao,
    this.status = StatusEmprestimo.emprestado,
    required this.dias,
  }) : dataEmprestimo = dataEmprestimo ?? DateTime.now();

  bool get estaAtrasado {
    if (status == StatusEmprestimo.devolvido) return false;
    final prazo = dataEmprestimo.add(Duration(days: dias));
    return DateTime.now().isAfter(prazo);
  }

  void atualizarStatus() {
    if (dataDevolucao != null) {
      status = StatusEmprestimo.devolvido;
    } else if (estaAtrasado) {
      status = StatusEmprestimo.atrasado;
    } else {
      status = StatusEmprestimo.emprestado;
    }
  }
}

// ################################################################################################

class UpdateEmprestimoFirebaseDatasourceImp
    implements UpdateEmprestimoDatasource {
  @override
  Future<bool> call(Emprestimo emprestimo) async {
    try {
      final firestore = FirebaseFirestore.instance;
      final emprestimoRef = firestore.collection('emprestimos').doc();

      await emprestimoRef.set({
        'destinatario': emprestimo.destinatario,
        'dataEmprestimo': emprestimo.dataEmprestimo,
        'dataDevolucao': emprestimo.dataDevolucao,
        'dias': emprestimo.dias,
        'status': emprestimo.status.toString(),
      });

      return true;
    } catch (e) {
      return false;
    }
  }
}
