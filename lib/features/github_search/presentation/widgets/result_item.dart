import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_search/features/github_search/domain/entities/github_repository.dart';
import 'package:url_launcher/url_launcher.dart';

class ResultItem extends StatelessWidget {
  final GithubRepository repository;

  const ResultItem({Key key, @required this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Image.network(repository.owner.avatarUrl),
      ),
      title: Text(repository.fullName),
      onTap: () async {
        if (await canLaunch(repository.htmlUrl)) {
          await launch(repository.htmlUrl);
        }
      },
    );
  }
}
