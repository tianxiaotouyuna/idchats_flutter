import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:idchats_flutter/core/config/app_singleton/app_singleton.dart';
import 'package:idchats_flutter/core/config/storge/storage.dart';
import 'package:idchats_flutter/features/app/presentation/page/app.dart';
import 'package:idchats_flutter/features/wallet_page/data/repositories/services_provider.dart';
import 'package:provider/single_child_widget.dart';
import 'injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  await Storage.init();
  await APPSingleton().init();
  final stores = await createProviders();
  runApp(
    DevicePreview(
      enabled: kDebugMode && kIsWeb,
      builder: (context) {
        return DebugBridge(stores);
      },
    ),
  );
}

class DebugBridge extends StatelessWidget {
  final List<SingleChildWidget> stores;
  const DebugBridge(this.stores, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return App(stores);  }
}
