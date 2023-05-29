import 'package:flutter/material.dart';
	import 'package:idchats_flutter/features/edit_user_info_page/presentation/bloc/edit_user_info_page_bloc.dart';
	import 'package:idchats_flutter/core/config/error/failures.dart';
	import 'package:idchats_flutter/core/usecases/usecase.dart';
	import 'package:dartz/dartz.dart';
	import 'package:idchats_flutter/features/edit_user_info_page/domain/repository/edit_user_info_page_repository.dart';
	
	class EditUserInfoPageUseCase implements UseCase<dynamic, CaseParams> {
	  final EditUserInfoPageRepository repository;
	  //  Current State of InnerDrawerState
	  EditUserInfoPageUseCase(this.repository);
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
