import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:idchats_flutter/core/error/failures.dart';
import 'package:idchats_flutter/core/usecases/usecase.dart';
import 'package:idchats_flutter/core/util/input_converter.dart';
import 'package:idchats_flutter/features/main_page/data/repositories/get_user_info_repository.dart';
import 'package:idchats_flutter/features/main_page/domain/entities/user_info_entity.dart';
import 'package:idchats_flutter/features/main_page/domain/usecases/push_page_case.dart';
import 'package:idchats_flutter/features/main_page/domain/usecases/reload_user_info_case.dart';

part 'main_page_event.dart';
part 'main_page_state.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String INVALID_INPUT_FAILURE_MESSAGE =
    'Invalid Input - The string must be a valid userId.';

class MainPageBloc extends Bloc<MainPageEvent, MainPageState> {
  final ReloadUserInfoCase reloadUserInfoCase;
  final PushPageCase pushPageCase;
  final InputConverter inputConverter;
  MainPageState get initialState => MainPageInitial();
  MainPageBloc(
      {required this.reloadUserInfoCase,
      required this.inputConverter,
      required this.pushPageCase})
      : super(MainPageInitial()) {
    on<ReloadUserInfo>((event, emit)async {
      final inputEither = inputConverter.isAddressString(event.userId);
      await inputEither.fold((failure) {
        emit(const Error(message: INVALID_INPUT_FAILURE_MESSAGE));
      }, (userId) async {
        emit(Loading());
        final failureOrTrivia =
            await reloadUserInfoCase(GetUserInfoParams(userId: userId));
        failureOrTrivia!.fold((failure) {
          emit(Error(message: _mapFailureToMessage(failure)));
        }, (entity) {
          emit(Refreshed(userInfoEntity: entity));
        });
      });
    });
    on<PushPage>((event, emit) {
      // TODO: implement event handler
    });
  }
}

String _mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
      return SERVER_FAILURE_MESSAGE;
    default:
      return 'Unexpected error';
  }
}
