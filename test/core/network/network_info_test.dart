import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/core/network/network_info.dart';
import 'package:mockito/mockito.dart';

class MockDataConnectionChecker extends Mock implements DataConnectionChecker {}

void main() {
  MockDataConnectionChecker mockDataConnectionChecker;
  NetworkInfoImpl networkInfo;

  setUp(() {
    mockDataConnectionChecker = MockDataConnectionChecker();
    networkInfo = NetworkInfoImpl(mockDataConnectionChecker);
  });

  test('should return true if data connection checker is connected', () async {
    //arrange
    final tHasConnection = Future.value(true);
    when(mockDataConnectionChecker.hasConnection)
        .thenAnswer((_) => tHasConnection);

    // act
    final isConnected = networkInfo.isConnected;

    //assert
    verify(mockDataConnectionChecker.hasConnection);
    expect(isConnected, tHasConnection);
  });
}
