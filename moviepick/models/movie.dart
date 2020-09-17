import 'genre.dart';

class Movie {
  final int id;
  final String title;
  final List<Genre> genre;
  final double voteAverage;
  final int voteCount;
  final String posterUrl;
  final String orginalLanguage;

  Movie({
    this.id,
    this.title,
    this.genre,
    this.voteAverage,
    this.voteCount,
    this.posterUrl,
    this.orginalLanguage,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        id: json['id'],
        title: json['title'],
        genre: json['genres'],
        voteAverage: json['vote_average'],
        voteCount: json['vote_count'],
        posterUrl: json['poster_path'],
        orginalLanguage: json['original_language']);
  }
}
