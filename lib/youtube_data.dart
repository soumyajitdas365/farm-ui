import 'dart:developer';

// import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class YoutubeData {
  static const String _api_key = "AIzaSyDnGpaRxI8HIdxR5XtRVTDGDFz3wwTx1YE";
  static Map<String, String> _header = {
    'Accept': 'application/json',
  };
  // Dio dio = Dio(
  //   BaseOptions(
  //       baseUrl: "https://www.googleapis.com/youtube/v3/", headers: _header),
  // );
  Future<dynamic> getChannelData(String channelId) async {
    await http
        .get(
      Uri.parse(
          "https://www.googleapis.com/youtube/v3/channels?part=snippet&part=contentDetails&id=$channelId&key=$_api_key"),
      headers: _header,
    )
        .then((value) {
      log(value.body);
    });
  }

  Future<dynamic> getPlaylistData(String channelId) async {
    await http
        .get(
      Uri.parse(
          "https://www.googleapis.com/youtube/v3/playlists?mine=true&key=$_api_key"),
      headers: _header,
    )
        .then((value) {
      log(value.body);
    });
  }
}
