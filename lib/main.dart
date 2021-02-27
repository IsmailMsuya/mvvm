import 'package:flutter/material.dart';
import 'package:mvvm/pages/movie_list_page.dart';
import 'package:mvvm/views/movie_list_view.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Movies",
        debugShowCheckedModeBanner: false,
        home:
        ChangeNotifierProvider(
          create: (context) => MovieListView(),
          child: MovieListPage(),
        )
    );
  }

}