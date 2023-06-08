import 'package:flutter/material.dart';
	import 'package:idchats_flutter/features/wallect_connect_page/presentation/bloc/wallect_connect_page_bloc.dart';
	import 'package:idchats_flutter/core/config/error/failures.dart';
	import 'package:idchats_flutter/core/usecases/usecase.dart';
	import 'package:dartz/dartz.dart';
	import 'package:idchats_flutter/features/wallect_connect_page/domain/repository/wallect_connect_page_repository.dart';
	
	class WallectConnectPageUseCase implements UseCase<dynamic, CaseParams> {
	  final WallectConnectPageRepository repository;
	  //  Current State of InnerDrawerState
	  WallectConnectPageUseCase(this.repository);
	  @override
	  Future<Either<Failure, dynamic>?> call(CaseParams params) async {
		String eventName = params.eventName;
		Map data = params.data;
		if (eventName == EVENT_NAVIGATE_PUSH) {
			var routeName = data['routeName'];
			var context = data['context'];
			var params = data['params'];
			Navigator.of(context).pushNamed(routeName, arguments:params??{});
		} 
		return const Right(true);
	  }
	}
