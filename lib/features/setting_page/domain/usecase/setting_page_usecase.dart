import 'package:flutter/material.dart';
	import 'package:idchats_flutter/features/setting_page/presentation/bloc/setting_page_bloc.dart';
	import 'package:idchats_flutter/core/config/error/failures.dart';
	import 'package:idchats_flutter/core/usecases/usecase.dart';
	import 'package:dartz/dartz.dart';
	import 'package:idchats_flutter/features/setting_page/domain/repository/setting_page_repository.dart';
	
	class SettingPageUseCase implements UseCase<dynamic, CaseParams> {
	  final SettingPageRepository repository;
	  //  Current State of InnerDrawerState
	  SettingPageUseCase(this.repository);
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
