// TODO remove
class ConnectionError implements Exception {
  String get message => 'No internet connection';

  const ConnectionError();
}

class ServerException implements Exception {}

class CacheException implements Exception {}
