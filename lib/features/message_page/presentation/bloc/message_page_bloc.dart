import 'package:equatable/equatable.dart';
	import 'package:flutter_bloc/flutter_bloc.dart';
	import 'package:idchats_flutter/core/usecases/usecase.dart';
	import 'package:idchats_flutter/core/util/input_converter.dart';
	import 'package:idchats_flutter/features/message_page/domain/entities/example_entity.dart';
	import 'package:idchats_flutter/features/message_page/domain/usecase/message_page_usecase.dart';
	import 'package:idchats_flutter/core/util/util.dart';
	
	part 'message_page_event.dart';
	part 'message_page_state.dart';
	
	const String SERVER_FAILURE_MESSAGE = 'Server Failure';
	const String INVALID_INPUT_FAILURE_MESSAGE =
		'Invalid Input - The string must be a valid userId.';
	
	class MessagePageBloc extends Bloc<MessagePageEvent, MessagePageState> {
	  final MessagePageUseCase messagePageUseCase;
	  final InputConverter inputConverter;
	  MessagePageState get initialState => MessagePageInitial();
	  MessagePageBloc({
		  required this.inputConverter,
		  required this.messagePageUseCase})
		  : super(const MessagePageInitial()) {
		on<MessagePageEvent>((event, emit) async {
			final result =  await messagePageUseCase(CaseParams(eventName: event.caseParams.eventName,data: event.caseParams.data));
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
  