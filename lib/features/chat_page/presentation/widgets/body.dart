import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:idchats_flutter/core/config/constants/app_constants.dart';
import 'package:idchats_flutter/core/widgets/biubiu_image.dart';
import 'package:idchats_flutter/core/widgets/biubiu_list_view.dart';
import 'package:idchats_flutter/features/chat_page/presentation/widgets/body_chat_card.dart';

class Body extends StatefulWidget {
  final bool isLoading;
  const Body({super.key, required this.isLoading});
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return BiuBiuListView(
        params: const ListViewParams('', {
          'chains': 'ethereum-goerli',
          'address': '0x7822d01737246a13f7979b9567e8d916f04ea074'
        }),
        resultDataKey: 'nfts',
        itemBuilder: (context, index,item) {
          return BodyChatCard(data: item);
        });
  }
}
