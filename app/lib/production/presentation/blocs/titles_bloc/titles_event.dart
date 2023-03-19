part of 'titles_bloc.dart';

@immutable
abstract class TitlesEvent {}

class GetTitles extends TitlesEvent {
  final TitlesRequest? filters;
  GetTitles({this.filters});
}

class GetTitleById extends TitlesEvent {
  final String id;
  GetTitleById(this.id);
}

