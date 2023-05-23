import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:get/get.dart';
import 'package:idchats_flutter/features/main_page/presentation/bloc/main_page_bloc.dart';

import '../../../../core/config/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import 'package:dartz/dartz.dart';

import '../repositories/main_page_repository.dart';

class MainPageCase implements UseCase<dynamic, CaseParams> {
  final MainPageRepository repository;
  //  Current State of InnerDrawerState
  MainPageCase(this.repository);
  @override
  Future<Either<Failure, dynamic>?> call(CaseParams params) async {
    String eventName = params.eventName;
    Map data = params.data;
    if (identical(eventName, EVENT_TOGGLE_DRAWER)) {
      final GlobalKey<InnerDrawerState> parentKey = data['parentKey'];
      parentKey.currentState?.toggle();
    } else if (eventName == EVENT_NAVIGATE_PUSH) {
      var routeName = data['routeName'];
      var params = data['params'];
      Get.toNamed(routeName,arguments: params??{});
    } else if (eventName == US_GET_INIT_SOURCE) {
      return await repository.getInitSource(data['data']);
    }
    return const Right(true);
  }
}
