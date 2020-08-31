class ConnectionError implements Exception {
  String get message => 'No internet connection';

  const ConnectionError();
}

class CacheException implements Exception {}
