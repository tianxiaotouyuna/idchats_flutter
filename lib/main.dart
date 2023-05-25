import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:idchats_flutter/core/config/routes/drawer.dart';
import 'package:idchats_flutter/core/config/routes/screen.dart';
import 'package:idchats_flutter/generated/l10n.dart';
import 'injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(
    DevicePreview(
      enabled: kDebugMode && kIsWeb,
      builder: (context) {
        return const MyApp();
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
    return GetMaterialApp(
      title: 'IDchats',
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,localeResolutionCallback: (locale, supportedLocales) {
        // 如果语言是英语
        if (locale?.languageCode == 'en') {
          //注意大小写，返回美国英语
          return const Locale('en', 'US');
        } else {
          return locale;
        }
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primarySwatch: Colors.blue,
        textTheme: TextTheme(bodyMedium: TextStyle(fontSize: 30.sp)),
      ),
      home: const AppDrawer(),
      getPages: Routes.getPages,
    );
  }
}
