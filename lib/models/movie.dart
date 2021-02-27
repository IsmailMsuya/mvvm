class Movie {

  //Model's properties
  final String title;
  final String poster;

  //Constructor
  Movie({this.title, this.poster});

  //Return title and poster in a json format
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        title: json["Title"],
        poster: json["Poster"]
    );
  }

}