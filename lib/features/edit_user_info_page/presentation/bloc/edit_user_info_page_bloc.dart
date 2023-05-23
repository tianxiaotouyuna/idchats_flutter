import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'edit_user_info_page_event.dart';
part 'edit_user_info_page_state.dart';

class EditUserInfoPageBloc extends Bloc<EditUserInfoPageEvent, EditUserInfoPageState> {
  EditUserInfoPageBloc() : super(EditUserInfoPageInitial()) {
    on<EditUserInfoPageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
