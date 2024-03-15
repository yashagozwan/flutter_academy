import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_session_5/data/constant/routes.dart';
import 'package:flutter_session_5/data/service/navigation_service.dart';
import 'package:flutter_session_5/presentation/screen/detail/bloc/detail_event.dart';
import 'package:flutter_session_5/presentation/screen/detail/bloc/detail_state.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final NavigationService _navigationService;

  DetailBloc(this._navigationService) : super(const DetailState()) {
    on<DetailInitial>(_initial);
    on<DetailStarted>(_started);
    on<DetailGameDetail>(_gameDetail);
  }

  void _initial(DetailInitial event, Emitter<DetailState> emit) {}

  void _started(DetailStarted event, Emitter<DetailState> emit) {}

  void _gameDetail(DetailGameDetail event, Emitter<DetailState> emit) {
    emit(state.copyWith(game: event.game));
    _navigationService.to(Routes.detail);
  }
}
