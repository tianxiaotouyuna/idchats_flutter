import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idchats_flutter/core/usecases/usecase.dart';
import 'package:idchats_flutter/core/util/input_converter.dart';
import 'package:idchats_flutter/features/app/domain/usecase/app_usecase.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final AppUseCase mainUseCase;
  final InputConverter inputConverter;
  AppState get initialState => const AppInitial();
  AppBloc({required this.inputConverter, required this.mainUseCase})
      : super(const AppInitial()) {
    on<AppEvent>((event, emit) async {
      String eventName = event.caseParams.eventName;
      Map data = event.caseParams.data;
      if (eventName == EVENT_CHANGE_LAUNGE) {
        final newState =
            LanguageChanged(data['languageCode'], data['countryCode']);
        emit(newState);
      }
    });
  }
}
