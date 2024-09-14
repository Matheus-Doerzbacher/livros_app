import 'package:get_it/get_it.dart';
import 'package:livros_app/core/inject/categoria_inject.dart';
import 'package:livros_app/core/inject/emprestimo_inject.dart';
import 'package:livros_app/core/inject/livro_inject.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    livroInject(getIt);
    categoriaInject(getIt);
    emprestimoInject(getIt);
  }
}
