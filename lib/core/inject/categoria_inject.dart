import 'package:get_it/get_it.dart';
import 'package:livros_app/layers/data/datasources/categoria_datasources/create_categoria_datasource.dart';
import 'package:livros_app/layers/data/datasources/categoria_datasources/delete_categoria_datasource.dart';
import 'package:livros_app/layers/data/datasources/categoria_datasources/firebase/create_categoria_datasource_imp.dart';
import 'package:livros_app/layers/data/datasources/categoria_datasources/firebase/create_categoria_firebase_datasource_imp.dart';
import 'package:livros_app/layers/data/datasources/categoria_datasources/firebase/delete_categoria_firebase_datasource_imp.dart';
import 'package:livros_app/layers/data/datasources/categoria_datasources/firebase/get_categorias_firebase_datasource_imp.dart';
import 'package:livros_app/layers/data/datasources/categoria_datasources/firebase/update_categoria_firebase_datasource_imp.dart';
import 'package:livros_app/layers/data/datasources/categoria_datasources/get_categorias_datasource.dart';
import 'package:livros_app/layers/data/datasources/categoria_datasources/update_categoria_datasource.dart';
import 'package:livros_app/layers/data/repositories/categoria_repositories_imp/create_categoria_repository_imp.dart';
import 'package:livros_app/layers/data/repositories/categoria_repositories_imp/delete_categoria_repository_imp.dart';
import 'package:livros_app/layers/data/repositories/categoria_repositories_imp/get_categorias_repository_imp.dart';
import 'package:livros_app/layers/data/repositories/categoria_repositories_imp/update_categoria_repository_imp.dart';
import 'package:livros_app/layers/domain/repositories/categoria_repositories/create_categoria_repository.dart';
import 'package:livros_app/layers/domain/repositories/categoria_repositories/delete_categoria_repository.dart';
import 'package:livros_app/layers/domain/repositories/categoria_repositories/get_categorias_repository.dart';
import 'package:livros_app/layers/domain/repositories/categoria_repositories/update_categoria_repository.dart';
import 'package:livros_app/layers/domain/usecases/categoria_usecase/create_categoria/create_categoria_usecase.dart';
import 'package:livros_app/layers/domain/usecases/categoria_usecase/create_categoria/create_categoria_usecase_imp.dart';
import 'package:livros_app/layers/domain/usecases/categoria_usecase/delete_categoria/delete_categoria_usecase.dart';
import 'package:livros_app/layers/domain/usecases/categoria_usecase/delete_categoria/delete_categoria_usecase_imp.dart';
import 'package:livros_app/layers/domain/usecases/categoria_usecase/get_categorias/get_categorias_usecase.dart';
import 'package:livros_app/layers/domain/usecases/categoria_usecase/get_categorias/get_categorias_usecase_imp.dart';
import 'package:livros_app/layers/domain/usecases/categoria_usecase/update_categoria/update_categoria_usecase.dart';
import 'package:livros_app/layers/domain/usecases/categoria_usecase/update_categoria/update_categoria_usecase_imp.dart';
import 'package:livros_app/layers/presentation/controllers/categoria_controller.dart';

void livroInject(GetIt getIt) {
  //datasources
  getIt.registerLazySingleton<CreateCategoriaDatasource>(
    () => CreateCategoriaFirebaseDatasourceImp(),
  );
  getIt.registerLazySingleton<DeleteCategoriaDatasource>(
    () => DeleteCategoriaFirebaseDatasourceImp(),
  );
  getIt.registerLazySingleton<GetCategoriasDatasource>(
    () => GetCategoriasFirebaseDatasourceImp(),
  );
  getIt.registerLazySingleton<UpdateCategoriaDatasource>(
    () => UpdateCategoriaFirebaseDatasourceImp(),
  );

  //repositories
  getIt.registerLazySingleton<CreateCategoriaRepository>(
    () => CreateCategoriaRepositoryImp(getIt()),
  );
  getIt.registerLazySingleton<DeleteCategoriaRepository>(
    () => DeleteCategoriaRepositoryImp(getIt()),
  );
  getIt.registerLazySingleton<GetCategoriasRepository>(
    () => GetCategoriasRepositoryImp(getIt()),
  );
  getIt.registerLazySingleton<UpdateCategoriaRepository>(
    () => UpdateCategoriaRepositoryImp(getIt()),
  );

  //usecases
  getIt.registerLazySingleton<CreateCategoriaUsecase>(
    () => CreateCategoriaUsecaseImp(getIt()),
  );
  getIt.registerLazySingleton<DeleteCategoriaUsecase>(
    () => DeleteCategoriaUsecaseImp(getIt()),
  );
  getIt.registerLazySingleton<GetCategoriasUsecase>(
    () => GetCategoriasUsecaseImp(getIt()),
  );
  getIt.registerLazySingleton<UpdateCategoriaUsecase>(
    () => UpdateCategoriaUsecaseImp(getIt()),
  );

  //controllers
  getIt.registerLazySingleton<CategoriaController>(
    () => CategoriaController(getIt(), getIt(), getIt(), getIt()),
  );
}

// Exitem 2 principais tipos de register
// - getIt.registerLazySingleton()
// - getIt.registerFactory()
// https://www.youtube.com/watch?v=hPm4oEBlwIM&list=PLRpTFz5_57cvCYRhHUui2Bis-5Ybh78TS&index=8
// min: 20:50