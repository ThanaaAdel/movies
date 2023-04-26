import 'package:dartz/dartz.dart';
import 'package:movies/core/error/exceptions.dart';
import 'package:movies/core/error/failler.dart';
import 'package:movies/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies/movies/domain/entities/movie.dart';
import 'package:movies/movies/domain/repository/base_movies_repository.dart';

class MovieRepository extends BaseMoviesRepository {
  final BaseMovieRemotDataSource baseMovieRemotDataSource;
  MovieRepository(this.baseMovieRemotDataSource);
  @override
  Future<Either<Failure,List<Movie>>> getNowPlayingMovie() async{
 final result = await baseMovieRemotDataSource.getNowPlayingMovieUseCase();
 try{
   return Right(result);
 } on ServerException catch (failure){
return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }

  }

  @override
  Future<Either<Failure,List<Movie>>> getPobularMovie() async {
    final result = await baseMovieRemotDataSource.getPobularMovieUseCase();
    try{
      return Right(result);
    } on ServerException catch (failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure,List<Movie>>> getTopRatedMovie() async {
    final result = await baseMovieRemotDataSource.getTopRatedMovieUseCase();
    try{
      return Right(result);
    } on ServerException catch (failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
}
