part of 'main_page_bloc.dart';

abstract class MainPageState extends Equatable {
  const MainPageState();

  @override
  List<Object> get props => [];
}

class MainPageInitial extends MainPageState {}

class NotRefresh extends MainPageState {}

class Refreshed extends MainPageState {
  final UserInfoEntity userInfoEntity;
  Refreshed({required this.userInfoEntity});
}

class Loading extends MainPageState {}

class Error extends MainPageState {
  final String message;

  const Error({required this.message});
}
