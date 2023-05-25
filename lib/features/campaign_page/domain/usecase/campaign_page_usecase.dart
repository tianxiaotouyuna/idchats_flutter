import 'package:get/get.dart';
	import 'package:idchats_flutter/features/campaign_page/presentation/bloc/campaign_page_bloc.dart';
	import 'package:idchats_flutter/core/config/error/failures.dart';
	import 'package:idchats_flutter/core/usecases/usecase.dart';
	import 'package:dartz/dartz.dart';
	import 'package:idchats_flutter/features/campaign_page/domain/repository/campaign_page_repository.dart';
	
	class CampaignPageUseCase implements UseCase<dynamic, CaseParams> {
	  final CampaignPageRepository repository;
	  //  Current State of InnerDrawerState
	  CampaignPageUseCase(this.repository);
	  @override
	  Future<Either<Failure, dynamic>?> call(CaseParams params) async {
		String eventName = params.eventName;
		Map data = params.data;
		if (eventName == EVENT_NAVIGATE_PUSH) {
		  var routeName = data['routeName'];
		  var params = data['params'];
		  Get.toNamed(routeName,arguments: params??{});
		} 
		return const Right(true);
	  }
	}
