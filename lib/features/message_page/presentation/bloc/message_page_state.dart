part of 'message_page_bloc.dart';

abstract class MessagePageState extends Equatable {
  const MessagePageState();

  @override
  List<Object> get props => [];
}

class MessagePageInitial extends MessagePageState {
  const MessagePageInitial();
}

class NotRefresh extends MessagePageState {}

class Loaded extends MessagePageState {
  final List <ExampleEntity> nfts;
  final ExampleEntity userInfo;
  const Loaded({required this.nfts,
  required this.userInfo});
}

class Loading extends MessagePageState {}

class Error extends MessagePageState {
  final String message;
  const Error({required this.message});
}
