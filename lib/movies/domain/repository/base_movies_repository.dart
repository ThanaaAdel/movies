import 'package:dartz/dartz.dart';
import 'package:movies/core/error/failler.dart';
import 'package:movies/movies/domain/entities/movie.dart';

abstract class BaseMoviesRepository{
  Future<Either<Failure,List<Movie>>> getNowPlayingMovie();
  Future<Either<Failure,List<Movie>>> getPobularMovie();
  Future<Either<Failure,List<Movie>>> getTopRatedMovie();
}