part of 'wallect_connect_page_bloc.dart';

abstract class WallectConnectPageState extends Equatable {
  const WallectConnectPageState();

  @override
  List<Object> get props => [];
}

class WallectConnectPageInitial extends WallectConnectPageState {
  const WallectConnectPageInitial();
}

class NotRefresh extends WallectConnectPageState {}

class Loaded extends WallectConnectPageState {
  final List <ExampleEntity> nfts;
  final ExampleEntity userInfo;
  const Loaded({required this.nfts,
  required this.userInfo});
}

class Loading extends WallectConnectPageState {}

class Error extends WallectConnectPageState {
  final String message;
  const Error({required this.message});
}
