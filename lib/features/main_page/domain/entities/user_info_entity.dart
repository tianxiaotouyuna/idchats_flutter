import 'package:equatable/equatable.dart';

import '../../data/models/user_info_dto.dart';

class UserInfoEntity extends Equatable {
  final String faceUrl;
  final String name;
  final String contractAddress;
  final int ownerCount;

  const UserInfoEntity({
    required this.faceUrl,
    required this.name,
    required this.contractAddress,
    required this.ownerCount,
  });

 factory UserInfoEntity.fromDto(UserInfoDto dto) {
    return UserInfoEntity(
      faceUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCvM0wnJt4JjeyU2ugS1mgv2Eqh9sHHEk_Dw&usqp=CAU',
      name: dto.name,
      contractAddress: dto.contract_address,
      ownerCount: dto.owner_count, 
    );
  }
  @override
  List<Object?> get props => [name, contractAddress,ownerCount];
}