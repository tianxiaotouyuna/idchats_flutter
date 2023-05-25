import 'package:equatable/equatable.dart';
	import 'package:flutter_bloc/flutter_bloc.dart';
	import 'package:idchats_flutter/core/usecases/usecase.dart';
	import 'package:idchats_flutter/core/util/input_converter.dart';
	import 'package:idchats_flutter/features/menu_page/domain/entities/example_entity.dart';
	import 'package:idchats_flutter/features/menu_page/domain/usecase/menu_page_usecase.dart';
	import 'package:idchats_flutter/core/util/util.dart';
	
	part 'menu_page_event.dart';
	part 'menu_page_state.dart';
	
	const String SERVER_FAILURE_MESSAGE = 'Server Failure';
	const String INVALID_INPUT_FAILURE_MESSAGE =
		'Invalid Input - The string must be a valid userId.';
	
	class MenuPageBloc extends Bloc<MenuPageEvent, MenuPageState> {
	  final MenuPageUseCase menuPageUseCase;
	  final InputConverter inputConverter;
	  MenuPageState get initialState => MenuPageInitial();
	  MenuPageBloc({
		  required this.inputConverter,
		  required this.menuPageUseCase})
		  : super(const MenuPageInitial()) {
		on<MenuPageEvent>((event, emit) async {
			final result =  await menuPageUseCase(CaseParams(eventName: event.caseParams.eventName,data: event.caseParams.data));
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
  