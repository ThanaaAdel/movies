import 'package:get_it/get_it.dart';
import 'package:movies/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies/movies/data/repository/movies_repository.dart';
import 'package:movies/movies/domain/repository/base_movies_repository.dart';
import 'package:movies/movies/domain/usecase/get_now_playing_movie_usecase.dart';
import 'package:movies/movies/domain/usecase/get_pobular_movie_usecase.dart';
import 'package:movies/movies/domain/usecase/get_top_rated_movie_usecase.dart';

GetIt sl=GetIt.instance;

class ServicesLocator {
  void init() {
    /// Bloc
    // sl.registerFactory(() => MoviesBloc(sl(), sl(), sl()));
    // sl.registerFactory(() => MovieDetailsBloc(sl(), sl()));

    /// Use Cases
    sl.registerLazySingleton(() => GetNowPlayingMovieUseCase(sl()));
    // sl.registerLazySingleton(() => GetPobularMovieUseCase(sl()));
    // sl.registerLazySingleton(() => GetTopRatedMovieUseCase(sl()));
    // sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));
    // sl.registerLazySingleton(() => GetRecommendationUseCase(sl()));

    /// Repository
    sl.registerLazySingleton<BaseMoviesRepository>(
            () => MovieRepository(sl()));

    /// DATA SOURCE
    sl.registerLazySingleton<BaseMovieRemotDataSource>(
            () => MovieRemotDataSource());
  }
}