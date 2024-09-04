import 'package:get_it/get_it.dart';
import 'package:livros_app/core/inject/livro_module.dart';

void initAllModules(GetIt getIt) {
  initLivroModule(getIt);
  // initAnotherModule(getIt);
}
