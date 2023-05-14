import 'package:equatable/equatable.dart';

class UserInfoEntity extends Equatable {
  final String faceUrl;
  final String address;
  final String domail;

  const UserInfoEntity({
    required this.faceUrl,
    required this.address,
    required this.domail,
  });

  @override
  List<Object?> get props => [faceUrl, address,domail];
}
