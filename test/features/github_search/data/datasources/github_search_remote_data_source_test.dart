import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/core/error/exceptions.dart';
import 'package:github_search/features/github_search/data/datasources/github_search_remote_data_source.dart';
import 'package:github_search/features/github_search/data/models/github_repositories_model.dart';
import 'package:http/http.dart' as http;
import 'package:matcher/matcher.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  GithubSearchRemoteDataSource remoteDataSource;
  MockHttpClient mockHttpClient;
  setUp(() {
    mockHttpClient = MockHttpClient();
    remoteDataSource =
        GithubSearchRemoteDataSourceImpl(httpClient: mockHttpClient);
  });

  final tTerm = 'flutter';
  final tGithubRepositories = GithubRepositoriesModel.fromJson(
      json.decode(fixture('github_repositories.json')));

  void setUpMockHttpClientSuccess200() {
    when(mockHttpClient.get(any, headers: anyNamed('headers'))).thenAnswer(
        (_) async => http.Response(fixture('github_repositories.json'), 200));
  }

  void setUpMockHttpClientFailure404() {
    when(mockHttpClient.get(any, headers: anyNamed('headers')))
        .thenAnswer((_) async => http.Response('something went wrong', 404));
  }

  test('should perform GET request on a URL with term ', () async {
    //arrange
    setUpMockHttpClientSuccess200();
    //act
    remoteDataSource.getGithubRepositories(tTerm);
    //assert
    verify(mockHttpClient
        .get('https://api.github.com/search/repositories?q=$tTerm'));
  });

  test('should return github repositories if response code is 200 (success)',
      () async {
    //arrange
    when(mockHttpClient.get(any, headers: anyNamed('headers'))).thenAnswer(
        (_) async => http.Response(fixture('github_repositories.json'), 200));
    //act
    final response = await remoteDataSource.getGithubRepositories(tTerm);
    //assert
    expect(response, equals(tGithubRepositories));
  });

  test('should thrown ServerException if response code is 404 or other',
      () async {
    //arrange
    setUpMockHttpClientFailure404();
    //act
    final call = remoteDataSource.getGithubRepositories;
    //assert
    expect(() async => call(tTerm), throwsA(TypeMatcher<ServerException>()));
  });
}
