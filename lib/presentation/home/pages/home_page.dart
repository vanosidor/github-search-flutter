import 'package:flutter/material.dart';
import 'package:github_search/presentation/home/widgets/search_content.dart';
import '../widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Github Search')),
      body: Column(
        children: [
          SearchBar(),
          Expanded(child: SearchContent()),
        ],
      ),

    );
  }

}
