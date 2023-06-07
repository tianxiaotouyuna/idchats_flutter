import 'package:equatable/equatable.dart';
import 'package:idchats_flutter/features/main_page/data/models/user_nft_dto.dart';

class UserNftEntity extends Equatable {
  final String nftId;
  final String name;
  final String imageUrl;

  const UserNftEntity({
    required this.nftId,
    required this.name,
    required this.imageUrl,
  });
 factory UserNftEntity.fromDto(UserNftDto dto) {
    return UserNftEntity(
      nftId: dto.nft_id,
      name: dto.name,
      imageUrl: dto.previews['image_medium_url'], 
      // imageUrl: 'https://tenfei01.cfp.cn/creative/vcg/veer/612/veer-432403105.jpg', 
    );
  }

  @override
  List<Object?> get props => [imageUrl];
}
