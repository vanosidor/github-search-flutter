import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search/presentation/home/bloc/github_search_bloc.dart';

class SearchBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SearchBarState();
}

class SearchBarState extends State<SearchBar> {
  TextEditingController _textController = TextEditingController();
  GithubSearchBloc _githubSearchBloc;


  @override
  void initState() {
    super.initState();
    _githubSearchBloc = BlocProvider.of<GithubSearchBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _textController,
        autocorrect: false,
        onChanged: (value) { if (value.length > 2) _githubSearchBloc.add(GithubSearchEvent.textChanged(value)); },
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search),
          suffixIcon:
              GestureDetector(onTap: _clearSearch, child: Icon(Icons.clear)),
          hintText: 'Enter a search term',
        ),
      ),
    );
  }

  void _clearSearch() {
       _githubSearchBloc.add(GithubSearchEvent.textChanged(''));
    _textController.clear();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
