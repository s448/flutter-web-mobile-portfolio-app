import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/Bloc/app_event.dart';
import 'package:portfolio/Bloc/app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(IninitialState()) {
    on<NavigateToHashEvent>(_handleNavigationChanged);
  }
  FutureOr<void> _handleNavigationChanged(
    NavigateToHashEvent event,
    Emitter<AppState> emit,
  ) {
    emit(NavigationHashUpdated(event.hash));
  }
}
