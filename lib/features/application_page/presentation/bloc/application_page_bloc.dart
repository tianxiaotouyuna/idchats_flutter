import 'package:equatable/equatable.dart';
	import 'package:flutter_bloc/flutter_bloc.dart';
	import 'package:idchats_flutter/core/usecases/usecase.dart';
	import 'package:idchats_flutter/core/util/input_converter.dart';
	import 'package:idchats_flutter/features/application_page/domain/entities/example_entity.dart';
	import 'package:idchats_flutter/features/application_page/domain/usecase/application_page_usecase.dart';
	import 'package:idchats_flutter/core/util/util.dart';
	
	part 'application_page_event.dart';
	part 'application_page_state.dart';
	
	const String SERVER_FAILURE_MESSAGE = 'Server Failure';
	const String INVALID_INPUT_FAILURE_MESSAGE =
		'Invalid Input - The string must be a valid userId.';
	
	class ApplicationPageBloc extends Bloc<ApplicationPageEvent, ApplicationPageState> {
	  final ApplicationPageUseCase applicationPageUseCase;
	  final InputConverter inputConverter;
	  ApplicationPageState get initialState => ApplicationPageInitial();
	  ApplicationPageBloc({
		  required this.inputConverter,
		  required this.applicationPageUseCase})
		  : super(const ApplicationPageInitial()) {
		on<ApplicationPageEvent>((event, emit) async {
			final result =  await applicationPageUseCase(CaseParams(eventName: event.caseParams.eventName,data: event.caseParams.data));
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
  