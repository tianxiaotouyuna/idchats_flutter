import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_page_event.dart';
part 'theme_page_state.dart';

class ThemePageBloc extends Bloc<ThemePageEvent, ThemePageState> {
  ThemePageBloc() : super(ThemePageInitial()) {
    on<ThemePageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
