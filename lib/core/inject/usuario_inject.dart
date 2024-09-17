import 'package:get_it/get_it.dart';
import 'package:livros_app/layers/data/datasources/usuario_datasources/firebase/usuario_firebase_datasource_imp.dart';
import 'package:livros_app/layers/data/datasources/usuario_datasources/usuario_datasource.dart';
import 'package:livros_app/layers/data/repositories_imp/usuario_repository_imp.dart';
import 'package:livros_app/layers/domain/repositories/usuairo_repository.dart';
import 'package:livros_app/layers/domain/usecases/usuario_usecase/usuario_usecase.dart';
import 'package:livros_app/layers/domain/usecases/usuario_usecase/usuario_usecase_imp.dart';
import 'package:livros_app/layers/presentation/controllers/usuario_controller.dart';

void usuarioInject(GetIt getIt) {
  //datasources
  getIt.registerLazySingleton<LoginUsuarioGoogleDatasource>(
    () => LoginUsuarioGoogleDatasourceImp(),
  );

  //repositories
  getIt.registerLazySingleton<LoginUsuarioGoogleRepository>(
    () => LoginUsuarioGoogleRepositoryImp(getIt()),
  );

  //usecases
  getIt.registerLazySingleton<LoginUsuarioGoogleUsecase>(
    () => LoginUsuarioGoogleUsecaseImp(getIt()),
  );

  //controllers
  getIt.registerLazySingleton<UsuarioController>(
    () => UsuarioController(getIt()),
  );
}

// Exitem 2 principais tipos de register
// - getIt.registerLazySingleton()
// - getIt.registerFactory()
// https://www.youtube.com/watch?v=hPm4oEBlwIM&list=PLRpTFz5_57cvCYRhHUui2Bis-5Ybh78TS&index=8
// min: 20:50