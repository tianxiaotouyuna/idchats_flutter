part of 'campaign_page_bloc.dart';

abstract class CampaignPageState extends Equatable {
  const CampaignPageState();

  @override
  List<Object> get props => [];
}

class CampaignPageInitial extends CampaignPageState {
  const CampaignPageInitial();
}

class NotRefresh extends CampaignPageState {}

class Loaded extends CampaignPageState {
  final List <ExampleEntity> nfts;
  final ExampleEntity userInfo;
  const Loaded({required this.nfts,
  required this.userInfo});
}

class Loading extends CampaignPageState {}

class Error extends CampaignPageState {
  final String message;
  const Error({required this.message});
}
