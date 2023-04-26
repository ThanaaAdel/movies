import 'package:equatable/equatable.dart';
import 'package:movies/core/utils/enums.dart';
import 'package:movies/movies/domain/entities/movie.dart';

class MoviesState extends Equatable{
  final List<Movie> nowPlayingMovies; //get real data
  final RequestState nowPlayingState; //state of data loading , loaded , error
  final String nowPlayingMessage; // return message from application

 const MoviesState(
  {
    this.nowPlayingMovies = const [],
    this.nowPlayingState = RequestState.loading,
    this.nowPlayingMessage = "",
});

  @override
  // TODO: implement props
  List<Object?> get props =>[];


}