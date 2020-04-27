import 'dart:convert';
import 'package:http/http.dart' as http;


import 'package:movie_app/src/models/movie_model.dart';
import 'package:movie_app/src/models/tvshow_model.dart';
import 'package:movie_app/src/utils/credentials.dart';

final credentials = AppCredentials();
class MovieProvider{

  String _apikey = credentials.apikey;
  String _baseurl = 'api.themoviedb.org';
  String _apiversion = '3';

  
  Future<List<Movie>> getTrending() async {

    final url = Uri.https(_baseurl, _apiversion+'/trending/movie/day',
      {
        'api_key' : _apikey
      }
    );

    final resp = await http.get(url);
    final decodedResp = json.decode(resp.body);
    final movielist = Movies.fromJsonList(decodedResp['results']);

    
    return movielist.movies;

  }

}



class TvShowProvider {
  String _apikey = credentials.apikey;
  String _baseurl = 'api.themoviedb.org';
  String _apiversion = '3';

  Future<List<TvShow>> getTrending() async {

    final url = Uri.https(_baseurl, _apiversion+'/trending/tv/day',
      {
        'api_key' : _apikey
      }
    );

    final resp = await http.get(url);
    final decodedResp = json.decode(resp.body);
    final showlist = TvShows.fromJsonList(decodedResp['results']);

    return showlist.tvShows;

  }

}


class MediaProvider {

  String _apikey = credentials.apikey;
  String _baseurl = 'api.themoviedb.org';
  String _apiversion = '3';

  Future<List<dynamic>> getTrending() async {

    List<dynamic> media = new List();
    final url = Uri.https(_baseurl, _apiversion+'/trending/all/day',
      {
        'api_key' : _apikey
      }
    );

    final resp = await http.get(url);
    final decodedResp = json.decode(resp.body);
    final movielist = decodedResp['results'];
    movielist.forEach( (item) {
      if (item['media_type'] == 'movie') {
        final movie = Movie.fromJson(item);
        media.add(movie);
      } else if(item['media_type'] == 'tv') {
        final show = TvShow.fromJson(item);
        media.add(show);
      }
    });
    

    return media;

  }

}