import 'package:get/get.dart';
	import 'package:idchats_flutter/features/menu_page/presentation/bloc/menu_page_bloc.dart';
	import 'package:idchats_flutter/core/config/error/failures.dart';
	import 'package:idchats_flutter/core/usecases/usecase.dart';
	import 'package:dartz/dartz.dart';
	import 'package:idchats_flutter/features/menu_page/domain/repository/menu_page_repository.dart';
	
	class MenuPageUseCase implements UseCase<dynamic, CaseParams> {
	  final MenuPageRepository repository;
	  //  Current State of InnerDrawerState
	  MenuPageUseCase(this.repository);
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