import 'package:get/get.dart';
	import 'package:idchats_flutter/features/chat_page/presentation/bloc/chat_page_bloc.dart';
	import 'package:idchats_flutter/core/config/error/failures.dart';
	import 'package:idchats_flutter/core/usecases/usecase.dart';
	import 'package:dartz/dartz.dart';
	import 'package:idchats_flutter/features/chat_page/domain/repository/chat_page_repository.dart';
	
	class ChatPageUseCase implements UseCase<dynamic, CaseParams> {
	  final ChatPageRepository repository;
	  //  Current State of InnerDrawerState
	  ChatPageUseCase(this.repository);
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
