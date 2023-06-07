part of 'email_login_page_bloc.dart';

abstract class EmailLoginPageState extends Equatable {
  const EmailLoginPageState();

  @override
  List<Object> get props => [];
}

class EmailLoginPageInitial extends EmailLoginPageState {
  const EmailLoginPageInitial();
}

class NotRefresh extends EmailLoginPageState {}

class Loaded extends EmailLoginPageState {
  final List <ExampleEntity> nfts;
  final ExampleEntity userInfo;
  const Loaded({required this.nfts,
  required this.userInfo});
}

class Loading extends EmailLoginPageState {}

class Error extends EmailLoginPageState {
  final String message;
  const Error({required this.message});
}
