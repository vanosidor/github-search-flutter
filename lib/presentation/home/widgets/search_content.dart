import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search/presentation/home/bloc/github_search_bloc.dart';
import 'package:github_search/presentation/home/widgets/result_item.dart';

class SearchContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GithubSearchBloc, GithubSearchState>(
      builder: (context, state) {
        if (state is SearchEmptyState) {
          return Center(child: Text('Please enter term'));
        }

        if (state is SearchLoadingState) {
          return Center(child: CircularProgressIndicator());
        }

        if (state is SearchErrorState) {
          return Center(child: Text('Error occurred: ${state.message}'));
        }
        if (state is SearcSuccessState) {

          final _items = state.items;

          return _items.isEmpty ? Text('Items list is empty') : ListView.builder(
            itemCount: _items.length,
            itemBuilder: (context, index) => ResultItem(item: _items[index]),
          );
        }
        return Text('unknown widget state');
      },
    );
  }
}
