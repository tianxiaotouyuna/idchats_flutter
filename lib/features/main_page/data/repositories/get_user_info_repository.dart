import 'package:dartz/dartz.dart';
import 'package:idchats_flutter/core/usecases/usecase.dart';
import 'package:idchats_flutter/features/main_page/data/models/user_info_dto.dart';
import 'package:idchats_flutter/features/main_page/domain/entities/user_info_entity.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../datasources/user_info_remote_datasource.dart';

typedef Future<UserInfoDto> _UserInfoChooser();

class GetUserInfoRepository {
  final UserInfoRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;
  GetUserInfoRepository({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  Future<Either<Failure, UserInfoEntity>>? getUserInfo(String userId) async {
    return await _getUserInfo(() {
      return remoteDataSource.getUserInfo(userId);
    });
  }
  
  Future<Either<Failure, UserInfoEntity>> _getUserInfo(
      _UserInfoChooser getUserInfo) async {
    try {
      final remoteTrivia = await getUserInfo();
      return Right(remoteTrivia);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
