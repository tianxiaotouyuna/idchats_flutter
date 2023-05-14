part of 'main_page_bloc.dart';

abstract class MainPageEvent extends Equatable {
  const MainPageEvent();
  @override
  List<Object> get props => [];
}
class ReloadUserInfo extends MainPageEvent {
  final String userId;
  const ReloadUserInfo(this.userId);
}
class PushPage extends MainPageEvent {
  final String pageName;
  const PushPage(this.pageName);
}

