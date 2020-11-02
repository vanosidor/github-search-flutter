import 'package:github_search/features/github_search/data/models/github_repository_model.dart';
import 'package:github_search/features/github_search/domain/entities/github_repositories.dart';
import 'package:meta/meta.dart';

class GithubRepositoriesModel extends GithubRepositories {
  GithubRepositoriesModel({@required List<GithubRepositoryModel> items})
      : super(items: items);

  @override
  List<Object> get props => [items];

  factory GithubRepositoriesModel.fromJson(Map<String, dynamic> jsonMap) {
    final items = (jsonMap['items'] as List)
        ?.map((e) => e == null ? null : GithubRepositoryModel.fromJson(e))
        ?.toList();
    return GithubRepositoriesModel(items: items);
  }

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> itemsMapped =
        this.items.map((e) => (e as GithubRepositoryModel)?.toJson()).toList();
    return {"items": itemsMapped};
  }
}
