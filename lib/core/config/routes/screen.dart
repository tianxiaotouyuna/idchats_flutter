import 'package:idchats_flutter/features/edit_user_info_page/presentation/page/edit_user_info_page.dart';
import '../../../features/wallet_page/presentation/pages/wallet_page.dart';
import 'package:idchats_flutter/features/chat_page/presentation/page/chat_page.dart';
import 'package:idchats_flutter/features/message_page/presentation/page/message_page.dart';
import 'package:idchats_flutter/features/mint_page/presentation/page/mint_page.dart';
import 'package:idchats_flutter/features/campaign_page/presentation/page/campaign_page.dart';
import 'package:idchats_flutter/features/space_page/presentation/page/space_page.dart';
import 'package:idchats_flutter/features/application_page/presentation/page/application_page.dart';
import 'package:idchats_flutter/features/setting_page/presentation/page/setting_page.dart';
import 'package:idchats_flutter/features/menu_page/presentation/page/menu_page.dart';
class Routes {
	static const menuPage = '/menuPage';
	static const settingPage = '/settingPage';
	static const applicationPage = '/applicationPage';
	static const spacePage = '/spacePage';
	static const campaignPage = '/campaignPage';
	static const mintPage = '/mintPage';
	static const messagePage = '/messagePage';
	static const chatPage = '/chatPage';
  static const editUserInfo = '/editUserInfo';
  static const walletPage = '/walletPage';

  static final routes ={
    menuPage:(context) => const MenuPage(),
    settingPage:(context) => const SettingPage(),
    applicationPage:(context) => const ApplicationPage(),
    spacePage:(context) => const SpacePage(),
    campaignPage:(context) => const CampaignPage(),
    mintPage:(context) => const MintPage(),
    messagePage:(context) => const MessagePage(),
    chatPage:(context) => const ChatPage(),
    editUserInfo:(context) => const EditUserInfoPage(),
    walletPage:(context) => const WalletPage(),
  } ;
}
