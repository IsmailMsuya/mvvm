import 'package:flutter/material.dart';
import 'package:mvvm/services/webservice.dart';
import 'package:mvvm/views/movie_view.dart';

class MovieListView extends ChangeNotifier {

  List<MovieView> movies = List<MovieView>();

  Future<void> fetchMovies(String keyword) async {
    final results =  await Webservice().fetchMovies(keyword);
    this.movies = results.map((item) => MovieView(movie: item)).toList();
    print(this.movies);
    notifyListeners();
  }

}