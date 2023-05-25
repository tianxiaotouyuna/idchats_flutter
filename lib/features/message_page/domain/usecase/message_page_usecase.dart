import 'package:get/get.dart';
	import 'package:idchats_flutter/features/message_page/presentation/bloc/message_page_bloc.dart';
	import 'package:idchats_flutter/core/config/error/failures.dart';
	import 'package:idchats_flutter/core/usecases/usecase.dart';
	import 'package:dartz/dartz.dart';
	import 'package:idchats_flutter/features/message_page/domain/repository/message_page_repository.dart';
	
	class MessagePageUseCase implements UseCase<dynamic, CaseParams> {
	  final MessagePageRepository repository;
	  //  Current State of InnerDrawerState
	  MessagePageUseCase(this.repository);
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
