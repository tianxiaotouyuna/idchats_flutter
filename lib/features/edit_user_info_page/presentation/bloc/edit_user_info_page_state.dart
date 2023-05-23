part of 'edit_user_info_page_bloc.dart';

abstract class EditUserInfoPageState extends Equatable {
  const EditUserInfoPageState();

  @override
  List<Object> get props => [];
}

class EditUserInfoPageInitial extends EditUserInfoPageState {
  const EditUserInfoPageInitial();
}

class NotRefresh extends EditUserInfoPageState {}

class Loaded extends EditUserInfoPageState {
  final List <ExampleEntity> nfts;
  final ExampleEntity userInfo;
  const Loaded({required this.nfts,
  required this.userInfo});
}

class Loading extends EditUserInfoPageState {}

class Error extends EditUserInfoPageState {
  final String message;
  const Error({required this.message});
}
