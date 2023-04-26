import 'package:dio/dio.dart';
import 'package:movies/core/error/exceptions.dart';
import 'package:movies/core/network/api_contance.dart';
import 'package:movies/core/network/error_message_model.dart';
import 'package:movies/movies/data/model/movie_model.dart';
abstract class BaseMovieRemotDataSource {
  Future<List<MovieModel>> getNowPlayingMovieUseCase();
  Future<List<MovieModel>> getPobularMovieUseCase();
  Future<List<MovieModel>> getTopRatedMovieUseCase();
}
class MovieRemotDataSource extends BaseMovieRemotDataSource{
  @override
  getNowPlayingMovieUseCase() async {
    final response = await Dio().get(
        ApiConstance.nowPlayingMoviePath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        (response.data["results"] as List).map((e) => MovieModel.fromJson(e)),
      );
    } else {
      throw ServerException(errorMessageModel: ErrorMessageModel.fromjson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getPobularMovieUseCase() async{
    final response = await Dio().get(
        ApiConstance.nowPlayingMoviePath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        (response.data["results"] as List).map((e) => MovieModel.fromJson(e)),
      );
    } else {
      throw ServerException(errorMessageModel: ErrorMessageModel.fromjson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovieUseCase() async{
    final response = await Dio().get(
        ApiConstance.nowPlayingMoviePath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
        (response.data["results"] as List).map((e) => MovieModel.fromJson(e)),
      );
    } else {
      throw ServerException(errorMessageModel: ErrorMessageModel.fromjson(response.data));
    }
  }
}
