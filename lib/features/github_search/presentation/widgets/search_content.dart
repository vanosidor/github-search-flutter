import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search/features/github_search/presentation/bloc/github_search_bloc.dart';
import 'package:github_search/features/github_search/presentation/widgets/result_item.dart';

class SearchContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GithubSearchBloc, GithubSearchState>(
      builder: (context, state) {
        if (state is Empty) {
          return Center(child: Text('Please enter term'));
        }

        if (state is Loading) {
          return Center(child: CircularProgressIndicator());
        }

        if (state is Error) {
          return Center(child: Text('Error occurred: ${state.message}'));
        }
        if (state is Loaded) {

          final _items = state.repositories.items;

          return _items.isEmpty ? Text('Items list is empty') : ListView.builder(
            itemCount: _items.length,
            itemBuilder: (context, index) => ResultItem(repository: _items[index]),
          );
        }
        return Text('unknown widget state');
      },
    );
  }
}
