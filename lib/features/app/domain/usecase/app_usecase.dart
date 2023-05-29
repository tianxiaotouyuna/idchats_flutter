import 'package:flutter/material.dart';
	import 'package:idchats_flutter/features/app/presentation/bloc/app_bloc.dart';
	import 'package:idchats_flutter/core/config/error/failures.dart';
	import 'package:idchats_flutter/core/usecases/usecase.dart';
	import 'package:dartz/dartz.dart';
	import 'package:idchats_flutter/features/app/domain/repository/app_repository.dart';
	
	class AppUseCase implements UseCase<dynamic, CaseParams> {
	  final AppRepository repository;
	  //  Current State of InnerDrawerState
	  AppUseCase(this.repository);
	  @override
	  Future<Either<Failure, dynamic>?> call(CaseParams params) async {
		String eventName = params.eventName;
		Map data = params.data;
		if (eventName == EVENT_NAVIGATE_PUSH2) {
		  var routeName = data['routeName'];
		  var context = data['params']['context'];
		  var passData = data['params']['passData'];
      Navigator.of(context).pushNamed(routeName,arguments: {data:passData});
		} 
		return const Right(true);
	  }
	}
