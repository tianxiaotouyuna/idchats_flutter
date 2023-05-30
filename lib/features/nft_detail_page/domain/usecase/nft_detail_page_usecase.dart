import 'package:flutter/material.dart';
	import 'package:idchats_flutter/features/nft_detail_page/presentation/bloc/nft_detail_page_bloc.dart';
	import 'package:idchats_flutter/core/config/error/failures.dart';
	import 'package:idchats_flutter/core/usecases/usecase.dart';
	import 'package:dartz/dartz.dart';
	import 'package:idchats_flutter/features/nft_detail_page/domain/repository/nft_detail_page_repository.dart';
	
	class NftDetailPageUseCase implements UseCase<dynamic, CaseParams> {
	  final NftDetailPageRepository repository;
	  //  Current State of InnerDrawerState
	  NftDetailPageUseCase(this.repository);
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
