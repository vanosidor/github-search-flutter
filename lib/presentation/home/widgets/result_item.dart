import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:github_search/data/models/search_result_item/search_result_item.dart';
import 'package:url_launcher/url_launcher.dart';

class ResultItem extends StatelessWidget {
  final SearchResultItem item;

  const ResultItem({Key key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Image.network(item.owner.avatarUrl),
      ),
      title: Text(item.fullName),
      onTap: () async {
        if (await canLaunch(item.htmlUrl)) {
          await launch(item.htmlUrl);
        }
      },
    );
  }
}
