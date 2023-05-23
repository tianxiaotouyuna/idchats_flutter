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
    );
  }

  @override
  List<Object?> get props => [imageUrl];
}
