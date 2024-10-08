import 'package:get_it/get_it.dart';
import 'package:livros_app/layers/data/datasources/livro_datasources/livro_datasource.dart';
import 'package:livros_app/layers/data/datasources/livro_datasources/firebase/create_livro_firebase_datasource_imp.dart';
import 'package:livros_app/layers/data/datasources/livro_datasources/firebase/delete_livro_firebase_datasource_imp.dart';
import 'package:livros_app/layers/data/datasources/livro_datasources/firebase/get_livro_by_id_firebase_datasource_imp.dart';
import 'package:livros_app/layers/data/datasources/livro_datasources/firebase/get_livros_firebase_datasource_imp.dart';
import 'package:livros_app/layers/data/datasources/livro_datasources/firebase/update_livro_firebase_datasource_imp.dart';
import 'package:livros_app/layers/data/repositories_imp/livro_repository_imp.dart';
import 'package:livros_app/layers/domain/repositories/livro_repository.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/livro_usecase.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/livro_usecase_imp.dart';
import 'package:livros_app/layers/presentation/controllers/livro_controller.dart';

void livroInject(GetIt getIt) {
  //datasources
  getIt.registerLazySingleton<GetLivrosDatasource>(
    () => GetLivrosFirebaseDatasourceImp(),
  );
  getIt.registerLazySingleton<GetLivroByIdDatasource>(
    () => GetLivroByIdFirebaseDatasourceImp(),
  );
  getIt.registerLazySingleton<CreateLivroDatasource>(
    () => CreateLivroFirebaseDatasourceImp(),
  );
  getIt.registerLazySingleton<UpdateLivroDatasource>(
    () => UpdateLivroFirebaseDatasourceImp(),
  );
  getIt.registerLazySingleton<DeleteLivroDatasource>(
    () => DeleteLivroFirebaseDatasourceImp(),
  );

  //repositories
  getIt.registerLazySingleton<GetLivrosRepository>(
    () => GetLivrosRepositoryImp(getIt()),
  );
  getIt.registerLazySingleton<GetLivroByIdRepository>(
    () => GetLivroByIdRepositoryImp(getIt()),
  );
  getIt.registerLazySingleton<CreateLivroRepository>(
    () => CreateLivroRepositoryImp(getIt()),
  );
  getIt.registerLazySingleton<UpdateLivroRepository>(
    () => UpdateLivroRepositoryImp(getIt()),
  );
  getIt.registerLazySingleton<DeleteLivroRepository>(
    () => DeleteLivroRepositoryImp(getIt()),
  );

  //usecases
  getIt.registerLazySingleton<GetLivrosUsecase>(
    () => GetLivrosUsecaseImp(getIt()),
  );
  getIt.registerLazySingleton<GetLivroByIdUsecase>(
    () => GetLivroByIdUsecaseImp(getIt()),
  );
  getIt.registerLazySingleton<CreateLivroUsecase>(
    () => CreateLivroUsecaseImp(getIt()),
  );
  getIt.registerLazySingleton<UpdateLivroUsecase>(
    () => UpdateLivroUsecaseImp(getIt()),
  );
  getIt.registerLazySingleton<DeleteLivroUsecase>(
    () => DeleteLivroUsecaseImp(getIt()),
  );

  //controllers
  getIt.registerLazySingleton<LivroController>(
    () => LivroController(getIt(), getIt(), getIt(), getIt(), getIt()),
  );
}

// Exitem 2 principais tipos de register
// - getIt.registerLazySingleton()
// - getIt.registerFactory()
// https://www.youtube.com/watch?v=hPm4oEBlwIM&list=PLRpTFz5_57cvCYRhHUui2Bis-5Ybh78TS&index=8
// min: 20:50