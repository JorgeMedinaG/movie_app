class TvShows {

  List<TvShow> tvShows = new List();

  TvShows();

  TvShows.fromJsonList( List<dynamic> jsonList ){

    if (jsonList ==null) return;

    for (var json in jsonList) {
      final show = TvShow.fromJson(json);
      tvShows.add(show);
    }

  }

}

class TvShow {
    String originalName;
    int id;
    String name;
    int voteCount;
    double voteAverage;
    DateTime firstAirDate;
    String posterPath;
    List<int> genreIds;
    String originalLanguage;
    String backdropPath;
    String overview;
    List<String> originCountry;
    double popularity;
    String mediaType;

    TvShow({
        this.originalName,
        this.id,
        this.name,
        this.voteCount,
        this.voteAverage,
        this.firstAirDate,
        this.posterPath,
        this.genreIds,
        this.originalLanguage,
        this.backdropPath,
        this.overview,
        this.originCountry,
        this.popularity,
        this.mediaType,
    });

    factory TvShow.fromJson(Map<String, dynamic> json) => TvShow(
        originalName: json["original_name"],
        id: json["id"],
        name: json["name"],
        voteCount: json["vote_count"],
        voteAverage: json["vote_average"].toDouble(),
        firstAirDate: DateTime.parse(json["first_air_date"]),
        posterPath: json["poster_path"],
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        originalLanguage: json["original_language"],
        backdropPath: json["backdrop_path"],
        overview: json["overview"],
        originCountry: List<String>.from(json["origin_country"].map((x) => x)),
        popularity: json["popularity"].toDouble(),
        mediaType: json["media_type"],
    );

    Map<String, dynamic> toJson() => {
        "original_name": originalName,
        "id": id,
        "name": name,
        "vote_count": voteCount,
        "vote_average": voteAverage,
        "first_air_date": "${firstAirDate.year.toString().padLeft(4, '0')}-${firstAirDate.month.toString().padLeft(2, '0')}-${firstAirDate.day.toString().padLeft(2, '0')}",
        "poster_path": posterPath,
        "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
        "original_language": originalLanguage,
        "backdrop_path": backdropPath,
        "overview": overview,
        "origin_country": List<dynamic>.from(originCountry.map((x) => x)),
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
