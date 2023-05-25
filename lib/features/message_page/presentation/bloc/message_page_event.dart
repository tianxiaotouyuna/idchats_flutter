part of 'message_page_bloc.dart';
	class MessagePageEvent extends Equatable {
	  final CaseParams caseParams;
	  const MessagePageEvent(this.caseParams);
	  @override
	  List<Object> get props => [];
	}
	// ignore_for_file: constant_identifier_names
	const EVENT_NAVIGATE_PUSH = "pushPage";
	const US_GET_INIT_SOURCE = "getInitSource";
	