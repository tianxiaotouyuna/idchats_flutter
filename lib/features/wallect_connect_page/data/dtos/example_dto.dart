
	import 'package:json_annotation/json_annotation.dart';
	part 'example_dto.g.dart';
	@JsonSerializable()
	
	class ExampleDto {
		final String nft_id;
		final String name;
		final Map previews;
	
	  const ExampleDto({
		required this.nft_id,
		required this.name,
		required this.previews,
	  });

	factory ExampleDto.fromJson(Map<String, dynamic> json) => _$ExampleDtoFromJson(json);

	Map<String, dynamic> toJson() => _$ExampleDtoToJson(this);
}
