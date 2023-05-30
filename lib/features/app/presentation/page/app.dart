import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:idchats_flutter/core/config/app_singleton/app_singleton.dart';
import 'package:idchats_flutter/core/config/routes/drawer.dart';
import 'package:idchats_flutter/core/config/routes/screen.dart';
import 'package:idchats_flutter/core/util/wallet_provider.dart';
import 'package:idchats_flutter/features/app/presentation/bloc/app_bloc.dart';
import 'package:idchats_flutter/injection_container.dart';
import 'package:idchats_flutter/core/l10n/generated/l10n.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class App extends StatelessWidget {
  final List<SingleChildWidget> stores;
  const App(this.stores, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ...stores,
        BlocProvider<AppBloc>(
          create: (_) => sl<AppBloc>(),
        ),
      ],
      child: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(builder: (context, state) {
      ScreenUtil.init(context, designSize: const Size(375, 812));
      return BlocProvider(
          create: (_) => sl<AppBloc>(),
          child: BlocBuilder<AppBloc, AppState>(builder: (context, state) {
            return 
            WalletProvider(
                builder: (context, store) => 
                MaterialApp(
                      title: 'IDchats',
                      localizationsDelegates: const [
                        S.delegate,
                        GlobalMaterialLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate
                      ],
                      supportedLocales: S.delegate.supportedLocales,
                      locale: Locale.fromSubtags(
                          languageCode: state.languageCode ??
                              APPSingleton().languageEntity.languageCode,
                          countryCode: state.countryCode ??
                              APPSingleton().languageEntity.countryCode),
                      theme: ThemeData(
                        colorScheme:
                            ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                        useMaterial3: true,
                        primarySwatch: Colors.blue,
                        textTheme:
                            TextTheme(bodyMedium: TextStyle(fontSize: 30.sp)),
                      ),
                      home: const AppDrawer(),
                      routes: Routes.routes,
                      builder: FToastBuilder(),
                    ));
          }));
    });
  }
}
