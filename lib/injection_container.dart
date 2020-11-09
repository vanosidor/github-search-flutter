import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:github_search/core/network/network_info.dart';
import 'package:github_search/features/github_search/data/datasources/github_search_local_data_source.dart';
import 'package:github_search/features/github_search/data/datasources/github_search_remote_data_source.dart';
import 'package:github_search/features/github_search/data/repositories/github_search_repository_impl.dart';
import 'package:github_search/features/github_search/domain/repositories/github_search_repository.dart';
import 'package:github_search/features/github_search/domain/usecases/get_github_search_usecase.dart';
import 'package:github_search/features/github_search/presentation/bloc/github_search_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features - GithubSearch
  //Bloc
  sl.registerFactory(() => GithubSearchBloc(getGithubRepositories: sl()));
  //Use case
  sl.registerLazySingleton(() => GetGithubRepositoriesUseCase(sl()));
  //Repository
  sl.registerLazySingleton<GithubSearchRepository>(() =>
      GithubSearchRepositoryImpl(
          localDataSource: sl(), remoteDataSource: sl(), networkInfo: sl()));

  //Data sources
  sl.registerLazySingleton<GithubSearchLocalDataSource>(
      () => GithubSearchLocalDataSourceImpl(sharedPreferences: sl()));
  sl.registerLazySingleton<GithubSearchRemoteDataSource>(
      () => GithubSearchRemoteDataSourceImpl(httpClient: sl()));

  //! Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => DataConnectionChecker());
}
