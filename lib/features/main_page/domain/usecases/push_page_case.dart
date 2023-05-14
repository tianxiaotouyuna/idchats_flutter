import 'dart:ffi';
import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:idchats_flutter/features/main_page/data/repositories/get_user_info_repository.dart';
import 'package:idchats_flutter/features/main_page/domain/entities/user_info_entity.dart';
import 'package:idchats_flutter/features/main_page/presentation/bloc/main_page_bloc.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import 'package:dartz/dartz.dart';


class PushPageCase implements UseCase<String, PushPageParams> {
  PushPageCase();
  @override
  Future<Either<Failure, String>?> call(PushPageParams params) async {
    log(1);
    return  const Right('true');
  }
}
class PushPageParams extends Equatable {
  final String routeName;
  const PushPageParams({required this.routeName});
  @override
  List<Object?> get props => [routeName];
}