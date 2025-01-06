import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:patiflix/models/movie.dart';

class MovieRepository {
  MovieRepository();

  Future<List<Movie>> getMovies() async {
    final response = await http.get(
        Uri.parse(
            'https://api.themoviedb.org/3/movie/popular?api_key=28b4461429d4464d1c2badfcad74da34'),
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyOGI0NDYxNDI5ZDQ0NjRkMWMyYmFkZmNhZDc0ZGEzNCIsIm5iZiI6MTczMzE3OTk1Ny4yNzIsInN1YiI6IjY3NGUzYTM1Nzk5YmMwNDcyZGVlOTdhZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.E_ZFCReyQDnNMdiIfh_LtsvrCrHM37LB3SeGeioF-Js',
        });

    if (response.statusCode == 200) {
      final Map data = json.decode(response.body);
      final List listMovies = data["results"];
      return listMovies.map((json) => Movie.fromMap(json as Map)).toList();
    } else {
      print('Request failed with status: ${response.statusCode}.');
      throw Exception('Failed to load movies');
    }
  }

  void sentData(Movie movie) async {
    Map<String, dynamic> map = movie.toMap();
    final response = await http.post(
        Uri.parse(
            'https://api.themoviedb.org/3/movie/popular?api_key=28b4461429d4464d1c2badfcad74da34'),
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyOGI0NDYxNDI5ZDQ0NjRkMWMyYmFkZmNhZDc0ZGEzNCIsIm5iZiI6MTczMzE3OTk1Ny4yNzIsInN1YiI6IjY3NGUzYTM1Nzk5YmMwNDcyZGVlOTdhZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.E_ZFCReyQDnNMdiIfh_LtsvrCrHM37LB3SeGeioF-Js',
        },
        body: jsonEncode(map));
        if (response.statusCode == 200) {
        print("Dado enviado com sucesso");
      } else {
        print('Request failed with status: ${response.statusCode}.');
        throw Exception('Failed to load movies');
      }
  }

    void editData(Movie movie) async {
    Map<String, dynamic> map = movie.toMap();
    final response = await http.put(
        Uri.parse(
            'https://api.themoviedb.org/3/movie/popular?api_key=28b4461429d4464d1c2badfcad74da34'),
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyOGI0NDYxNDI5ZDQ0NjRkMWMyYmFkZmNhZDc0ZGEzNCIsIm5iZiI6MTczMzE3OTk1Ny4yNzIsInN1YiI6IjY3NGUzYTM1Nzk5YmMwNDcyZGVlOTdhZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.E_ZFCReyQDnNMdiIfh_LtsvrCrHM37LB3SeGeioF-Js',
        },
        body: jsonEncode(map));
        if (response.statusCode == 200) {
        print("Dado enviado com sucesso");
      } else {
        print('Request failed with status: ${response.statusCode}.');
        throw Exception('Failed to load movies');
      }
  }

    void editName(int idMovie, String newName) async {
    Map<String, dynamic> map = {'title': newName};
    final response = await http.patch(
        Uri.parse(
            'https://api.themoviedb.org/3/movie/popular?api_key=28b4461429d4464d1c2badfcad74da34?id=$idMovie'),
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyOGI0NDYxNDI5ZDQ0NjRkMWMyYmFkZmNhZDc0ZGEzNCIsIm5iZiI6MTczMzE3OTk1Ny4yNzIsInN1YiI6IjY3NGUzYTM1Nzk5YmMwNDcyZGVlOTdhZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.E_ZFCReyQDnNMdiIfh_LtsvrCrHM37LB3SeGeioF-Js',
        },
        body: jsonEncode(map));
        if (response.statusCode == 200) {
        print("Dado enviado com sucesso");
      } else {
        print('Request failed with status: ${response.statusCode}.');
        throw Exception('Failed to load movies');
      }
  }
}
