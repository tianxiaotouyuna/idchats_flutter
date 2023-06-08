part of 'edit_user_info_page_bloc.dart';
	class EditUserInfoPageEvent extends Equatable {
	  final CaseParams caseParams;
	  const EditUserInfoPageEvent(this.caseParams);
	  @override
	  List<Object> get props => [];
	}
	// ignore_for_file: constant_identifier_names
	const EVENT_NAVIGATE_PUSH = "pushPage";
	const US_GET_INIT_SOURCE = "getInitSource";
	const EVENT_GET_EMAIL_CODE = "getEmailCode";
	const EVENT_CREATE_WALLECT_FINISH = "createWallectFinish";
	const EVENT_LOGIN_OUT = "loginOut";
	