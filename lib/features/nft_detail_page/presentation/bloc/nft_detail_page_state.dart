part of 'nft_detail_page_bloc.dart';

abstract class NftDetailPageState extends Equatable {
  const NftDetailPageState();

  @override
  List<Object> get props => [];
}

class NftDetailPageInitial extends NftDetailPageState {
  const NftDetailPageInitial();
}

class NotRefresh extends NftDetailPageState {}

class Loaded extends NftDetailPageState {
  final List <ExampleEntity> nfts;
  final ExampleEntity userInfo;
  const Loaded({required this.nfts,
  required this.userInfo});
}

class Loading extends NftDetailPageState {}

class Error extends NftDetailPageState {
  final String message;
  const Error({required this.message});
}
