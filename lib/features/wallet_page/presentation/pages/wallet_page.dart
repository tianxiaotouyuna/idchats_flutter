import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:idchats_flutter/core/config/constants/app_constants.dart';
import 'package:idchats_flutter/core/l10n/generated/l10n.dart';
import 'package:idchats_flutter/core/widgets/biubiu_staus_bar.dart';

import '../../../../core/util/wallet_provider.dart';
import '../widgets/balance.dart';
import '../widgets/change_network.dart';
import '../widgets/copyable_address.dart';

class WalletPage extends HookWidget {
  final String title;
  const WalletPage({super.key, this.title = '钱包功能'}) : super();

  @override
  Widget build(BuildContext context) {
    final store = useWallet(context);
    final address = store.state.address;
    final network = store.state.network;

    useEffect(() {
      store.initialise();
      return null;
    }, []);

    useEffect(
      () => store.listenTransfers(address, network),
      [address, network],
    );

    return Scaffold(
      appBar: BiuBiuStausBar(
        title: S.of(context).main_walletFeature,
      ),
      backgroundColor: MAIN_BACKGROUND_COLOR,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChangeNetwork(
              onChange: store.changeNetwork,
              currentValue: store.state.network,
              loading: store.state.loading,
            ).marginOnly(bottom: 10),
            CopyableAddress(address: store.state.address),
            Balance(
              balance: store.state.tokenBalance,
              symbol: 'tokens',
              fontSizeDelta: 6,
            ),
            Balance(
              balance: store.state.ethBalance,
              symbol: network.config.symbol,
              fontColor: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }
}



//  actions: [
//           Builder(
//             builder: (context) => IconButton(
//               icon: const Icon(Icons.refresh),
//               onPressed: !store.state.loading
//                   ? () async {
//                       await store.refreshBalance();
//                       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//                         content: Text('Balance updated'),
//                         duration: Duration(milliseconds: 800),
//                       ));
//                     }
//                   : null,
//             ),
//           ),
//           IconButton(
//             icon: const Icon(Icons.send),
//             onPressed: () {
//               Navigator.of(context)
//                   .pushNamed('/transfer', arguments: store.state.network);
//             },
//           ),
//         ],