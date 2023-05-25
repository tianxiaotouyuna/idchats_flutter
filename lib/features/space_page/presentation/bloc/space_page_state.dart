part of 'space_page_bloc.dart';

abstract class SpacePageState extends Equatable {
  const SpacePageState();

  @override
  List<Object> get props => [];
}

class SpacePageInitial extends SpacePageState {
  const SpacePageInitial();
}

class NotRefresh extends SpacePageState {}

class Loaded extends SpacePageState {
  final List <ExampleEntity> nfts;
  final ExampleEntity userInfo;
  const Loaded({required this.nfts,
  required this.userInfo});
}

class Loading extends SpacePageState {}

class Error extends SpacePageState {
  final String message;
  const Error({required this.message});
}
