import 'package:get_it/get_it.dart';
import 'package:livros_app/core/inject/livro_inject.dart';

class Inject {
  static void init() {
    // Obtém a instância do GetIt
    GetIt getIt = GetIt.instance;

    // Inicializa o módulo Livro
    initLivroModule(getIt);
  }
}
