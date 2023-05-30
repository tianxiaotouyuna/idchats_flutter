// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:idchats_flutter/core/config/routes/screen.dart';
import 'package:idchats_flutter/features/main_page/presentation/bloc/main_page_bloc.dart';
import 'package:idchats_flutter/features/nft_detail_page/presentation/page/nft_detail_page.dart';

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
      var context = data['context'];
      var params = data['params'];
      if (routeName == Routes.nftDetailPage) {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                 NftDetailPage(entity: params??{}),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),

        );
      }
     else Navigator.of(context).pushNamed(routeName, arguments: params ?? {});
    } else if (eventName == US_GET_INIT_SOURCE) {
      return await repository.getInitSource(data['data']);
    }
    return const Right(true);
  }
}
