
	import 'package:dartz/dartz.dart';
	import 'package:idchats_flutter/features/app/data/dtos/example_dto.dart';
	import 'package:idchats_flutter/features/app/domain/entities/example_entity.dart';
	import 'package:idchats_flutter/core/config/network/network_info.dart';
	import 'package:idchats_flutter/core/config/error/exceptions.dart';
	import 'package:idchats_flutter/core/config/error/failures.dart';
	import 'package:idchats_flutter/features/app/data/datasources/app_remote_datasource.dart';
	import 'request_types.dart';
	
	typedef Future<Map> _initalChooser();
	
	class AppRepository {
	  final AppRemoteDataSource remoteDataSource;
  	  final NetworkInfo networkInfo;
	  AppRepository({
		required this.remoteDataSource,
    	required this.networkInfo,
	  });
	
	  ///获取初始化数据
	  Future<Either<Failure, Map>>? getInitSource(GetInitParams params) async {
		return await _getInitSource(() async {
		  Map userinfoJson = await remoteDataSource.getUserInfo(params);
	
		  List<ExampleEntity> exampleinfo = [];
		  userinfoJson['nfts'].forEach((element) {
			ExampleDto dto = ExampleDto.fromJson(element);
			exampleinfo.add(ExampleEntity.fromDto(dto));
		  });
		  List<ExampleEntity> nftsMoni = exampleinfo;
		  
		  Map reslut = {'nfts': nftsMoni, 'userinfo': exampleinfo[0]};
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
