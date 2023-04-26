import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/core/utils/enums.dart';
import 'package:movies/movies/domain/usecase/get_now_playing_movie_usecase.dart';
import 'package:movies/movies/presentation/controller/movies_event.dart';
import 'package:movies/movies/presentation/controller/movies_state.dart';

class MovieBloc extends Bloc<MoviesEvent,MoviesState> {
  final GetNowPlayingMovieUseCase getNowPlayingMovieUseCase;
  MovieBloc(this.getNowPlayingMovieUseCase)
      : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvents>((event, emit) async {
      //emit do refresh page
      final result =
      await getNowPlayingMovieUseCase.execute();
      emit(const MoviesState(nowPlayingState: RequestState.loading));
      print(result);

    });
  }
}
