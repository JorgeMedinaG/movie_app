class Movies {

  List<Movie> movies = new List();

  Movies();

  Movies.fromJsonList( List<dynamic> jsonList ){

    if (jsonList ==null) return;

    for (var json in jsonList) {
      final movie = Movie.fromJson(json);
      movies.add(movie);
    }

  }

}

class Movie {
    int id;
    bool video;
    int voteCount;
    double voteAverage;
    String title;
    DateTime releaseDate;
    String originalLanguage;
    String originalTitle;
    List<int> genreIds;
    String backdropPath;
    bool adult;
    String overview;
    String posterPath;
    double popularity;
    String mediaType;

    Movie({
        this.id,
        this.video,
        this.voteCount,
        this.voteAverage,
        this.title,
        this.releaseDate,
        this.originalLanguage,
        this.originalTitle,
        this.genreIds,
        this.backdropPath,
        this.adult,
        this.overview,
        this.posterPath,
        this.popularity,
        this.mediaType,
    });

    factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        id: json["id"],
        video: json["video"],
        voteCount: json["vote_count"],
        voteAverage: json["vote_average"].toDouble(),
        title: json["title"],
        releaseDate: DateTime.parse(json["release_date"]),
        originalLanguage: json["original_language"],
        originalTitle: json["original_title"],
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        backdropPath: json["backdrop_path"],
        adult: json["adult"],
        overview: json["overview"],
        posterPath: json["poster_path"],
        popularity: json["popularity"].toDouble(),
        mediaType: json["media_type"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "video": video,
        "vote_count": voteCount,
        "vote_average": voteAverage,
        "title": title,
        "release_date": "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
        "original_language": originalLanguage,
        "original_title": originalTitle,
        "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
        "backdrop_path": backdropPath,
        "adult": adult,
        "overview": overview,
        "poster_path": posterPath,
        "popularity": popularity,
        "media_type": mediaType,
    };

  String getPosterImg() {

    if ( posterPath == null ) {
      return 'https://cdn11.bigcommerce.com/s-auu4kfi2d9/stencil/59512910-bb6d-0136-46ec-71c445b85d45/e/933395a0-cb1b-0135-a812-525400970412/icons/icon-no-image.svg';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }

  }

  String getBackgroundImg() {

    if ( posterPath == null ) {
      return 'https://cdn11.bigcommerce.com/s-auu4kfi2d9/stencil/59512910-bb6d-0136-46ec-71c445b85d45/e/933395a0-cb1b-0135-a812-525400970412/icons/icon-no-image.svg';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$backdropPath';
    }
  }

}
