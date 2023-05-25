part of 'menu_page_bloc.dart';

abstract class MenuPageState extends Equatable {
  const MenuPageState();

  @override
  List<Object> get props => [];
}

class MenuPageInitial extends MenuPageState {
  const MenuPageInitial();
}

class NotRefresh extends MenuPageState {}

class Loaded extends MenuPageState {
  final List <ExampleEntity> nfts;
  final ExampleEntity userInfo;
  const Loaded({required this.nfts,
  required this.userInfo});
}

class Loading extends MenuPageState {}

class Error extends MenuPageState {
  final String message;
  const Error({required this.message});
}
