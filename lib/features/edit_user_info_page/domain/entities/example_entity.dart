import 'package:equatable/equatable.dart';
	import 'package:idchats_flutter/features/edit_user_info_page/data/dtos/example_dto.dart';
	
	class ExampleEntity extends Equatable {
	  final String nftId;
	  final String name;
	  final String imageUrl;
	
	  const ExampleEntity({
		required this.nftId,
		required this.name,
		required this.imageUrl,
	  });
	 factory ExampleEntity.fromDto(ExampleDto dto) {
		return ExampleEntity(
		  nftId: dto.nft_id,
		  name: dto.name,
		  imageUrl: dto.previews['image_medium_url'], 
		);
	  }
	
	  @override
	  List<Object?> get props => [imageUrl];
	}
