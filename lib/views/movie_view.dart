import 'package:mvvm/models/movie.dart';

class MovieView {

  final Movie movie;

  MovieView({this.movie});

  String get title {
    return this.movie.title;
  }

  String get poster {
    return this.movie.poster;
  }

}
