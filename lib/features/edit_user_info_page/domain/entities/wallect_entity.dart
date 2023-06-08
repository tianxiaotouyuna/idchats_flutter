import 'package:equatable/equatable.dart';
	
	class WallectEntity extends Equatable {
	  final String address;
	
	  const WallectEntity({
		required this.address,
	  });
	
	  @override
	  List<Object?> get props => [address];
	}
