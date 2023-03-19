import 'dart:async';

import 'package:app/production/data/models/request/titles/titles_request.dart';
import 'package:app/production/data/models/response/results/title_results.dart';
import 'package:app/production/domain/usecases/titles_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'titles_event.dart';
part 'titles_state.dart';

class TitlesBloc extends Bloc<TitlesEvent, TitlesState> {
  TitlesBloc(this._titlesUseCase) : super(TitlesInitial()) {
    on<GetTitles>(_getTitles);
    on<GetTitleById>(_getTitleById);
  }

  final TitlesUsecase _titlesUseCase;
  List<TitleResults> _titles = [];

  Future<void> _getTitles(GetTitles event, Emitter<TitlesState> emit) async {
    emit(TitlesLoading());

    final titles = await _titlesUseCase.getList(filters: filters);
    titles.fold((exception) {
        emit(TitlesError(exception));
    }, (data) {
      if (data?.isNotEmpty == true) {
        _titles = data!;
        emit(TitlesLoaded(data));
      } else {
        emit(TitlesEmpty());
      }
    });
  }


  Future<void> _getTitleById(GetTitleById event, Emitter<TitlesState> emit) async {
    emit(TitlesLoading());
    try {
      final titles = await _titlesUseCase.getById(event.id);
      titles.fold((exception) {
        emit(TitlesError(exception));
      }, (data) {
        if (data?.isNotEmpty == true) {
          emit(TitlesLoaded(data!));
        } else {
          emit(TitlesEmpty());
        }
      });
    } on DioError catch (e) {
      emit(TitlesError(e));
    }
  }

}
