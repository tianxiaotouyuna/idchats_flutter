import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idchats_flutter/core/usecases/usecase.dart';
import 'package:idchats_flutter/core/util/input_converter.dart';
import 'package:idchats_flutter/features/main_page/domain/entities/user_info_entity.dart';
import 'package:idchats_flutter/features/main_page/domain/entities/user_nft_entity.dart';

import '../../../../core/util/util.dart';
import '../../domain/usecases/main_page_case.dart';

part 'main_page_event.dart';
part 'main_page_state.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String INVALID_INPUT_FAILURE_MESSAGE =
    'Invalid Input - The string must be a valid userId.';

class MainPageBloc extends Bloc<MainPageEvent, MainPageState> {
  final MainPageCase mainPageCase;
  final InputConverter inputConverter;
  MainPageState get initialState => MainPageInitial();
  MainPageBloc({
      required this.inputConverter,
      required this.mainPageCase})
      : super(const MainPageInitial()) {
    on<MainPageEvent>((event, emit) async {
        final result =  await mainPageCase(CaseParams(eventName: event.caseParams.eventName,data: event.caseParams.data));
       result!.fold((failure) {
          emit(Error(message: Util.mapFailureToMessage(failure)));
        }, (trivia) {
          if(event.caseParams.eventName==US_GET_INIT_SOURCE){
          List <UserNftEntity> nfts=trivia['nfts'];
          UserInfoEntity userInfo=trivia['userinfo'];
          emit(Loaded(nfts: nfts,userInfo:userInfo ));
          }
          
        });

    });
  }
}
