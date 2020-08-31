import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/home/pages/home_page.dart';
import 'presentation/home/bloc/github_search_bloc.dart';

import 'package:injectable/injectable.dart';

import 'core/di/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<GithubSearchBloc>(
        create: (context) => getIt(),
        child: HomePage(),
      ),
    );
  }
}
