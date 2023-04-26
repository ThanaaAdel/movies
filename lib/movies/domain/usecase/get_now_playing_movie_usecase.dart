import 'package:dartz/dartz.dart';
import 'package:movies/core/error/failler.dart';
import 'package:movies/movies/domain/entities/movie.dart';
import 'package:movies/movies/domain/repository/base_movies_repository.dart';

class GetNowPlayingMovieUseCase{
 final BaseMoviesRepository baseMoviesRepository;

 GetNowPlayingMovieUseCase(this.baseMoviesRepository);

 Future<Either<Failure,List<Movie>>> execute ()async {
   return await baseMoviesRepository.getNowPlayingMovie();
 }
}