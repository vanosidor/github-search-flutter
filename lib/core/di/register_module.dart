import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  String get baseUrl => 'https://api.github.com/search/repositories?q=';

  @lazySingleton
  DataConnectionChecker get connectionChecker => DataConnectionChecker();

  @LazySingleton()
  http.Client get httpClient => http.Client();
}
