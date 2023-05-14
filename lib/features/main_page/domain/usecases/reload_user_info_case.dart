import 'package:equatable/equatable.dart';
import 'package:idchats_flutter/features/main_page/data/repositories/get_user_info_repository.dart';
import 'package:idchats_flutter/features/main_page/domain/entities/user_info_entity.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import 'package:dartz/dartz.dart';


class ReloadUserInfoCase implements UseCase<UserInfoEntity, GetUserInfoParams> {
  final GetUserInfoRepository repository;
  ReloadUserInfoCase(this.repository);
  @override
  Future<Either<Failure, UserInfoEntity>?> call(GetUserInfoParams params) async {
    return await repository.getUserInfo(params.userId);
  }
}

class GetUserInfoParams extends Equatable {
  final String userId;
  const GetUserInfoParams({required this.userId});
  @override
  List<Object?> get props => [userId];
}