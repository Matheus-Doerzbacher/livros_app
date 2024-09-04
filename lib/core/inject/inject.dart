import 'package:get_it/get_it.dart';
import 'package:livros_app/core/inject/livro_inject.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    livroInject(getIt);
  }
}
