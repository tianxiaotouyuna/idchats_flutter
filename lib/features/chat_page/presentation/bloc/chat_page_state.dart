part of 'chat_page_bloc.dart';

abstract class ChatPageState extends Equatable {
  const ChatPageState();

  @override
  List<Object> get props => [];
}

class ChatPageInitial extends ChatPageState {
  const ChatPageInitial();
}

class NotRefresh extends ChatPageState {}

class Loaded extends ChatPageState {
  final List <ExampleEntity> nfts;
  final ExampleEntity userInfo;
  const Loaded({required this.nfts,
  required this.userInfo});
}

class Loading extends ChatPageState {}

class Error extends ChatPageState {
  final String message;
  const Error({required this.message});
}
