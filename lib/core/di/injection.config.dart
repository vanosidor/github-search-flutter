// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:github_search/core/network/network_info.dart';

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

import '../../data/datasources/github_api.dart';
import '../../data/datasources/github_cache.dart';
import '../../data/repositories/github_repository.dart';
import '../../domain/repositories/i_github_repository.dart';
import '../../presentation/home/bloc/github_search_bloc.dart';
import 'register_module.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<Client>(() => registerModule.httpClient);
  gh.lazySingleton<DataConnectionChecker>(
      () => registerModule.connectionChecker);
  gh.lazySingleton<IGithubCache>(() => GithubCache());
  gh.lazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(get<DataConnectionChecker>()));
  gh.factory<String>(() => registerModule.baseUrl);
  gh.lazySingleton<IGithubRemote>(
      () => GithubApi(get<Client>(), get<String>()));
  gh.lazySingleton<IGithubRepository>(() => GithubRepository(
        get<IGithubCache>(),
        get<IGithubRemote>(),
        get<NetworkInfo>(),
      ));
  gh.factory<GithubSearchBloc>(
      () => GithubSearchBloc(get<IGithubRepository>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
