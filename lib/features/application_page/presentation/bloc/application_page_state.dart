part of 'application_page_bloc.dart';

abstract class ApplicationPageState extends Equatable {
  const ApplicationPageState();

  @override
  List<Object> get props => [];
}

class ApplicationPageInitial extends ApplicationPageState {
  const ApplicationPageInitial();
}

class NotRefresh extends ApplicationPageState {}

class Loaded extends ApplicationPageState {
  final List <ExampleEntity> nfts;
  final ExampleEntity userInfo;
  const Loaded({required this.nfts,
  required this.userInfo});
}

class Loading extends ApplicationPageState {}

class Error extends ApplicationPageState {
  final String message;
  const Error({required this.message});
}
