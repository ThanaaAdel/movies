import 'package:equatable/equatable.dart';

abstract class MoviesEvent extends Equatable {
  const MoviesEvent();

  @override
  List<Object> get props => [];
}
class GetNowPlayingMoviesEvents extends MoviesEvent {

}

class GetPopularMoviesEvents extends MoviesEvent {

}

class GetTopRatedMoviesEvents extends MoviesEvent {

}

