import 'package:dartz/dartz.dart';
import 'package:idchats_flutter/features/main_page/data/models/user_info_dto.dart';
import 'package:idchats_flutter/features/main_page/data/models/user_nft_dto.dart';
import 'package:idchats_flutter/features/main_page/domain/entities/user_info_entity.dart';
import 'package:idchats_flutter/features/main_page/domain/entities/user_nft_entity.dart';

import '../../../../core/config/error/exceptions.dart';
import '../../../../core/config/error/failures.dart';
import '../../../../core/config/network/network_info.dart';
import '../../data/datasources/user_info_remote_datasource.dart';
import 'request_types.dart';

typedef Future<Map> _initalChooser();

class MainPageRepository {
  final UserInfoRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;
  MainPageRepository({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  ///获取初始化数据
  Future<Either<Failure, Map>>? getInitSource(GetInitParams params) async {
    return await _getInitSource(() async {
      Map userinfoJson = await remoteDataSource.getUserInfo(params);
      Map nftsJson = await remoteDataSource.getUserNfts(params);

      List<UserInfoEntity> userinfo = [];
      userinfoJson['nfts'].forEach((element) {
        UserInfoDto dto = UserInfoDto.fromJson(element);
        userinfo.add(UserInfoEntity.fromDto(dto));
      });

      List<UserNftEntity> nfts = [];
      nftsJson['nfts'].forEach((element) {
        UserNftDto dto = UserNftDto.fromJson(element);
        nfts.add(UserNftEntity.fromDto(dto));
      });
      Map reslut = {'nfts': nfts, 'userinfo': userinfo[0]};
      return reslut;
    });
  }

  Future<Either<Failure, Map<dynamic, dynamic>>> _getInitSource(
      _initalChooser getInitSource) async {
    try {
      final reslut = await getInitSource();
      return Right(reslut);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
