
	import 'package:equatable/equatable.dart';
	class GetEmailCodeParams extends Equatable {
	  final String emailAddress;
	  const GetEmailCodeParams({required this.emailAddress});
	  @override
	  List<Object?> get props => [emailAddress];
	}
