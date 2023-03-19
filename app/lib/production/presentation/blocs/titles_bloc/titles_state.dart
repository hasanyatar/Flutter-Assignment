part of 'titles_bloc.dart';

abstract class TitlesState {
  const TitlesState({
    this.titles = const [],
    this.error,
  });
  final List<TitleResults> titles;
  final DioError? error;
}

class TitlesInitial extends TitlesState {}

class TitlesLoading extends TitlesState {}

class TitlesEmpty extends TitlesState {}


class TitlesLoaded extends TitlesState {
  const TitlesLoaded(List<TitleResults> titles) : super(titles: titles);
}

class TitlesError extends TitlesState {
  const TitlesError(DioError error) : super(error: error);
}
