import 'package:cloud_firestore/cloud_firestore.dart';
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

// abstract class CreateEmprestimoDatasource {
//   Future<bool> call(Emprestimo emprestimo);
// }

// class CreateEmprestimoFirebaseDatasourceImp
//     implements CreateEmprestimoDatasource {
//   @override
//   Future<bool> call(Emprestimo emprestimo) async {
//     try {
//       final firestore = FirebaseFirestore.instance;
//       final emprestimoRef = firestore.collection('emprestimos').doc();

//       await emprestimoRef.set({
//         'destinatario': emprestimo.destinatario,
//         'dataEmprestimo': emprestimo.dataEmprestimo,
//         'dataDevolucao': emprestimo.dataDevolucao,
//         'dias': emprestimo.dias,
//         'status': emprestimo.status.toString(),
//       });

//       return true;
//     } catch (e) {
//       return false;
//     }
//   }
// }

// abstract class CreateEmprestimoRepository {
//   Future<bool> call(Emprestimo emprestimo);
// }

// class CreateEmprestimoRepositoryImp implements CreateEmprestimoRepository {
//   final CreateEmprestimoDatasource _createEmprestimoDatasource;

//   CreateEmprestimoRepositoryImp(this._createEmprestimoDatasource);

//   @override
//   Future<bool> call(Emprestimo emprestimo) async {
//     return await _createEmprestimoDatasource(emprestimo);
//   }
// }

// abstract class CreateEmprestimoUsecase {
//   Future<bool> call(Emprestimo emprestimo);
// }

// class CreateEmprestimoUsecaseImp implements CreateEmprestimoUsecase {
//   final CreateEmprestimoRepository _createEmprestimoRepository;

//   CreateEmprestimoUsecaseImp(this._createEmprestimoRepository);

//   @override
//   Future<bool> call(Emprestimo emprestimo) async {
//     return await _createEmprestimoRepository(emprestimo);
//   }
// }

// -------------------------------------------------------------
