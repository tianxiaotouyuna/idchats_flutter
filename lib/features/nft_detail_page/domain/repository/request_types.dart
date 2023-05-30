
	import 'package:equatable/equatable.dart';
	
	class GetInitParams extends Equatable {
	  final GetNftParams getNftParams;
	  final GetUserInfoParams getUserInfoParams;
	  const GetInitParams({required this.getNftParams,required this.getUserInfoParams});
	  @override
	  List<Object?> get props => [
		//请求nft，
		getNftParams,
		getUserInfoParams,
		//个人信息
		];
	}
	class GetNftParams extends Equatable {
	  final String chains;
	  final String address;
	  const GetNftParams({required this.chains,required this.address});
	  @override
	  List<Object?> get props => [chains,address];
	}
	class GetUserInfoParams extends Equatable {
	  final String userId;
	  const GetUserInfoParams({required this.userId});
	  @override
	  List<Object?> get props => [userId];
	}
