part of 'setting_page_bloc.dart';

abstract class SettingPageState extends Equatable {
  const SettingPageState();

  @override
  List<Object> get props => [];
}

class SettingPageInitial extends SettingPageState {
  const SettingPageInitial();
}

class NotRefresh extends SettingPageState {}

class Loaded extends SettingPageState {
  final List <ExampleEntity> nfts;
  final ExampleEntity userInfo;
  const Loaded({required this.nfts,
  required this.userInfo});
}

class Loading extends SettingPageState {}

class Error extends SettingPageState {
  final String message;
  const Error({required this.message});
}
