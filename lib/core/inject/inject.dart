import 'package:get_it/get_it.dart';
import 'package:livros_app/layers/data/datasources/livro_datasources/create_livro_datasource.dart';
import 'package:livros_app/layers/data/datasources/livro_datasources/firebase/create_livro_firebase_datasource_imp.dart';
import 'package:livros_app/layers/data/datasources/livro_datasources/firebase/get_livro_by_id_firebase_datasource_imp.dart';
import 'package:livros_app/layers/data/datasources/livro_datasources/firebase/get_livros_firebase_datasource_imp.dart';
import 'package:livros_app/layers/data/datasources/livro_datasources/get_livro_by_id_datasource.dart';
import 'package:livros_app/layers/data/datasources/livro_datasources/get_livros_datasource.dart';
import 'package:livros_app/layers/data/repositories/livro_repositories_imp/create_livro_repository_imp.dart';
import 'package:livros_app/layers/data/repositories/livro_repositories_imp/get_livro_by_id_repository_imp.dart';
import 'package:livros_app/layers/data/repositories/livro_repositories_imp/get_livros_repository_imp.dart';
import 'package:livros_app/layers/domain/repositories/livro_repositories/create_livro_repository.dart';
import 'package:livros_app/layers/domain/repositories/livro_repositories/get_livro_by_id_repository.dart';
import 'package:livros_app/layers/domain/repositories/livro_repositories/get_livros_repository.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/create_livro/create_livro_usecase.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/create_livro/create_livro_usecase_imp.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/get_livro_by_id/get_livro_by_id_usecase.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/get_livro_by_id/get_livro_by_id_usecase_imp.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/get_livros/get_livros_usecase.dart';
import 'package:livros_app/layers/domain/usecases/livro_usecase/get_livros/get_livros_usecase_imp.dart';
import 'package:livros_app/layers/presentation/controllers/livro_controller.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

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

    //controllers
    getIt.registerLazySingleton<LivroController>(
      () => LivroController(getIt(), getIt(), getIt()),
    );
  }
}
// Exitem 2 principais tipos de register
// - getIt.registerLazySingleton()
// - getIt.registerFactory()
// https://www.youtube.com/watch?v=hPm4oEBlwIM&list=PLRpTFz5_57cvCYRhHUui2Bis-5Ybh78TS&index=8
// min: 20:50