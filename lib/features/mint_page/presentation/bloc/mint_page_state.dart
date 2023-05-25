part of 'mint_page_bloc.dart';

abstract class MintPageState extends Equatable {
  const MintPageState();

  @override
  List<Object> get props => [];
}

class MintPageInitial extends MintPageState {
  const MintPageInitial();
}

class NotRefresh extends MintPageState {}

class Loaded extends MintPageState {
  final List <ExampleEntity> nfts;
  final ExampleEntity userInfo;
  const Loaded({required this.nfts,
  required this.userInfo});
}

class Loading extends MintPageState {}

class Error extends MintPageState {
  final String message;
  const Error({required this.message});
}
