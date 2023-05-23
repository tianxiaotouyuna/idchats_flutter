import 'package:equatable/equatable.dart';
	import 'package:flutter_bloc/flutter_bloc.dart';
	import 'package:idchats_flutter/core/usecases/usecase.dart';
	import 'package:idchats_flutter/core/util/input_converter.dart';
	import 'package:idchats_flutter/features/chat_page/domain/entities/example_entity.dart';
	import 'package:idchats_flutter/features/chat_page/domain/usecase/chat_page_usecase.dart';
	import 'package:idchats_flutter/core/util/util.dart';
	
	part 'chat_page_event.dart';
	part 'chat_page_state.dart';
	
	const String SERVER_FAILURE_MESSAGE = 'Server Failure';
	const String INVALID_INPUT_FAILURE_MESSAGE =
		'Invalid Input - The string must be a valid userId.';
	
	class ChatPageBloc extends Bloc<ChatPageEvent, ChatPageState> {
	  final ChatPageUseCase chatPageUseCase;
	  final InputConverter inputConverter;
	  ChatPageState get initialState => ChatPageInitial();
	  ChatPageBloc({
		  required this.inputConverter,
		  required this.chatPageUseCase})
		  : super(const ChatPageInitial()) {
		on<ChatPageEvent>((event, emit) async {
			final result =  await chatPageUseCase(CaseParams(eventName: event.caseParams.eventName,data: event.caseParams.data));
		   result!.fold((failure) {
			  emit(Error(message: Util.mapFailureToMessage(failure)));
			}, (trivia) {
			  if(event.caseParams.eventName==EVENT_NAVIGATE_PUSH){
			  List <ExampleEntity> nfts=trivia['nfts'];
			  ExampleEntity userInfo=trivia['userinfo'];
			  emit(Loaded(nfts: nfts,userInfo:userInfo ));
			  }
			  
			});
	
		});
	  }
	}
  