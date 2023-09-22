import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:movie/data/model/nowPlaying.dart';
import 'package:movie/repository/api/api.dart';
import 'package:movie/repository/api/apiKey.dart';

class nowPlayingRepository {
  API api = API();
  Future fetchNowPlaying() async {
    try {
      Response response = await api.sendRequest.get('/3/movie/now_playing');
      nowPlaying hello = nowPlaying.fromJson(response.data);
      print(hello);
    } catch (e) {
      throw e;
    }
  }
}
