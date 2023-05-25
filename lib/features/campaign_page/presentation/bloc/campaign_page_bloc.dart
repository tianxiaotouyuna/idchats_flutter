import 'package:equatable/equatable.dart';
	import 'package:flutter_bloc/flutter_bloc.dart';
	import 'package:idchats_flutter/core/usecases/usecase.dart';
	import 'package:idchats_flutter/core/util/input_converter.dart';
	import 'package:idchats_flutter/features/campaign_page/domain/entities/example_entity.dart';
	import 'package:idchats_flutter/features/campaign_page/domain/usecase/campaign_page_usecase.dart';
	import 'package:idchats_flutter/core/util/util.dart';
	
	part 'campaign_page_event.dart';
	part 'campaign_page_state.dart';
	
	const String SERVER_FAILURE_MESSAGE = 'Server Failure';
	const String INVALID_INPUT_FAILURE_MESSAGE =
		'Invalid Input - The string must be a valid userId.';
	
	class CampaignPageBloc extends Bloc<CampaignPageEvent, CampaignPageState> {
	  final CampaignPageUseCase campaignPageUseCase;
	  final InputConverter inputConverter;
	  CampaignPageState get initialState => CampaignPageInitial();
	  CampaignPageBloc({
		  required this.inputConverter,
		  required this.campaignPageUseCase})
		  : super(const CampaignPageInitial()) {
		on<CampaignPageEvent>((event, emit) async {
			final result =  await campaignPageUseCase(CaseParams(eventName: event.caseParams.eventName,data: event.caseParams.data));
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
  