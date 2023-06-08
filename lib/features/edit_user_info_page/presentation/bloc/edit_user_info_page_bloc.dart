import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idchats_flutter/core/usecases/usecase.dart';
import 'package:idchats_flutter/core/util/input_converter.dart';
import 'package:idchats_flutter/features/edit_user_info_page/domain/entities/example_entity.dart';
import 'package:idchats_flutter/features/edit_user_info_page/domain/entities/wallect_entity.dart';
import 'package:idchats_flutter/features/edit_user_info_page/domain/usecase/edit_user_info_page_usecase.dart';
import 'package:idchats_flutter/core/util/util.dart';

part 'edit_user_info_page_event.dart';
part 'edit_user_info_page_state.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String INVALID_INPUT_FAILURE_MESSAGE =
    'Invalid Input - The string must be a valid userId.';

class EditUserInfoPageBloc
    extends Bloc<EditUserInfoPageEvent, EditUserInfoPageState> {
  final EditUserInfoPageUseCase editUserInfoPageUseCase;
  final InputConverter inputConverter;
  EditUserInfoPageState get initialState => EditUserInfoPageInitial();
  EditUserInfoPageBloc(
      {required this.inputConverter, required this.editUserInfoPageUseCase})
      : super(const EditUserInfoPageInitial()) {
    on<EditUserInfoPageEvent>((event, emit) async {
      final result = await editUserInfoPageUseCase(CaseParams(
          eventName: event.caseParams.eventName, data: event.caseParams.data));
      result!.fold((failure) {
        emit(Error(message: Util.mapFailureToMessage(failure)));
      }, (trivia) {
        if (event.caseParams.eventName == EVENT_NAVIGATE_PUSH) {
          List<ExampleEntity> nfts = trivia['nfts'];
          ExampleEntity userInfo = trivia['userinfo'];
          emit(Loaded(nfts: nfts, userInfo: userInfo));
        }
        if (event.caseParams.eventName == EVENT_CREATE_WALLECT_FINISH) {
          emit(const CreateFinished(
              wallectInfo: WallectEntity(address: '0x3993981928133')));
        }
        if (event.caseParams.eventName == EVENT_LOGIN_OUT) {
          emit(  InitState());
        }
      });
    });
  }
}
