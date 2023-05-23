import 'package:get/get.dart';
import 'package:idchats_flutter/features/theme_page/presentation/pages/theme_page.dart';
import '../../../features/edit_user_info_page/presentation/pages/edit_user_info_page.dart';
import '../../../features/wallet_page/presentation/pages/wallet_page.dart';

class Routes {
  static const editUserInfo = '/edit_user_info';
  static const walletPage = '/walletPage';
  static const chatPage = '/chatPage';
  static const themePage = '/themePage';

  static final getPages = [
    // Home
    GetPage(name: editUserInfo, page: () => const EditUserInfoPage()),
    // Sample
    GetPage(name: walletPage, page: () => const WalletPage()),
    GetPage(name: themePage, page: () => const ThemePage()),
  ];
}
