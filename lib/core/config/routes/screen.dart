import 'package:get/get.dart';
import 'package:idchats_flutter/features/edit_user_info_page/presentation/page/edit_user_info_page.dart';
import 'package:idchats_flutter/features/theme_page/presentation/pages/theme_page.dart';
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
	static const newPage = '/newPage';
	static const testPage = '/testPage';
	static const qqq = '/qqq';
	static const asdPage = '/asdPage';
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
  static const themePage = '/themePage';

  static final getPages = [
		GetPage(name: menuPage, page: () => const MenuPage()),
		GetPage(name: settingPage, page: () => const SettingPage()),
		GetPage(name: applicationPage, page: () => const ApplicationPage()),
		GetPage(name: spacePage, page: () => const SpacePage()),
		GetPage(name: campaignPage, page: () => const CampaignPage()),
		GetPage(name: mintPage, page: () => const MintPage()),
		GetPage(name: messagePage, page: () => const MessagePage()),
		GetPage(name: chatPage, page: () => const ChatPage()),
    // Home
    GetPage(name: editUserInfo, page: () => const EditUserInfoPage()),
    // Sample
    GetPage(name: walletPage, page: () => const WalletPage()),
    GetPage(name: themePage, page: () => const ThemePage()),
  ];
}
