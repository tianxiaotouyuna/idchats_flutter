part of 'main_page_bloc.dart';
class MainPageEvent extends Equatable {
  final CaseParams caseParams;
  const MainPageEvent(this.caseParams);
  @override
  List<Object> get props => [];
}
// ignore_for_file: constant_identifier_names
const EVENT_NAVIGATE_PUSH = "pushPage";
const EVENT_TOGGLE_DRAWER = "toggleDrawer";
const US_GET_INIT_SOURCE = "getInitSource";


