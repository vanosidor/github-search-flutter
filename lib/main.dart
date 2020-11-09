import 'package:flutter/material.dart';
import 'package:github_search/features/github_search/presentation/pages/github_search_page.dart';

import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GithubSearchPage(),
    );
  }
}
