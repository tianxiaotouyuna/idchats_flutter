import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'guidepage_event.dart';
part 'guidepage_state.dart';

class GuidepageBloc extends Bloc<GuidepageEvent, GuidepageState> {
  GuidepageBloc() : super(GuidepageInitial()) {
    on<GuidepageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
