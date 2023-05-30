
	import 'package:dartz/dartz.dart';
	import 'package:idchats_flutter/features/nft_detail_page/data/dtos/example_dto.dart';
	import 'package:idchats_flutter/features/nft_detail_page/domain/entities/example_entity.dart';
	import 'package:idchats_flutter/core/config/network/network_info.dart';
	import 'package:idchats_flutter/core/config/error/exceptions.dart';
	import 'package:idchats_flutter/core/config/error/failures.dart';
	import 'package:idchats_flutter/features/nft_detail_page/data/datasources/nft_detail_page_remote_datasource.dart';
	import 'request_types.dart';
	
	typedef Future<Map> _initalChooser();
	
	class NftDetailPageRepository {
	  final NftDetailPageRemoteDataSource remoteDataSource;
  	  final NetworkInfo networkInfo;
	  NftDetailPageRepository({
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
