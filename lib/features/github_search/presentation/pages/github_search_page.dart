import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search/features/github_search/presentation/bloc/github_search_bloc.dart';
import 'package:github_search/features/github_search/presentation/widgets/search_bar.dart';
import 'package:github_search/features/github_search/presentation/widgets/search_content.dart';

import '../../../../injection_container.dart';

class GithubSearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Github Search')),
      body: _buildBody(context),
    );
  }

  BlocProvider<GithubSearchBloc> _buildBody(BuildContext context) {
    return BlocProvider<GithubSearchBloc>(
      create: (context) => sl(),
      child: Column(
        children: [
          SearchBar(),
          Expanded(child: SearchContent()),
        ],
      ),
    );
  }
}
