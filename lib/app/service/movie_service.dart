import 'package:get/get.dart';

class MovieService extends GetConnect {
  Future<List<dynamic>> fetchMovie() async {
    final response = await get(
        "https://api.themoviedb.org/3/movie/popular?api_key=b379990d33e25ed5bfe42db89a97ec62");
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body['results'];
    }
  }

  Future<dynamic> fetchMovieDetail(String movie_id) async {
    final response = await get(
        "https://api.themoviedb.org/3/movie/$movie_id?api_key=b379990d33e25ed5bfe42db89a97ec62");
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body;
    }
  }
}
