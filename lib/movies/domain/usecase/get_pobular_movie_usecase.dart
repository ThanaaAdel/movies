import 'package:movies/movies/domain/entities/movie.dart';
import 'package:movies/movies/domain/repository/base_movies_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:movies/core/error/failler.dart';
class GetPobularMovieUseCase{
  final BaseMoviesRepository baseMoviesRepository;
  GetPobularMovieUseCase(this.baseMoviesRepository);
  Future<Either<Failure,List<Movie>>> execute()async{
     return await baseMoviesRepository.getPobularMovie();
  }
}