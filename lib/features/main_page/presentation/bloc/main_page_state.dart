part of 'main_page_bloc.dart';

abstract class MainPageState extends Equatable {
  const MainPageState();

  @override
  List<Object> get props => [];
}

class MainPageInitial extends MainPageState {
  const MainPageInitial();
}

class NotRefresh extends MainPageState {}

class Loaded extends MainPageState {
  final List <UserNftEntity> nfts;
  final UserInfoEntity userInfo;
  const Loaded({required this.nfts,
  required this.userInfo});
}

class Loading extends MainPageState {}

class Error extends MainPageState {
  final String message;
  const Error({required this.message});
}
