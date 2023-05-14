import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:idchats_flutter/features/main_page/presentation/pages/main_page.dart';
import 'package:idchats_flutter/features/menu_page/presentation/pages/menu_page.dart';
import 'package:idchats_flutter/core/util/utils.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return InnerDrawer(
      key: _innerDrawerKey,
      onTapClose: true, // default false
      swipe: true, // default true
      colorTransitionChild:ColorUtil.fromHex('#0F1526'), // default Color.black54
      colorTransitionScaffold: Colors.black54, // default Color.black54
      backgroundDecoration: BoxDecoration(color: ColorUtil.fromHex('#0F1526')), // default  Theme.of(context).backgroundColor

      //When setting the vertical offset, be sure to use only top or bottom
      // offset: const IDOffset.only(bottom: 0.05, right: 0.0, left: 0.0),
      offset: const IDOffset.horizontal(0.5),
      scale:const IDOffset.horizontal(0.8), // set the offset in both directions

      proportionalChildArea: true, // default true
      borderRadius: 50, // default 0
      leftAnimationType: InnerDrawerAnimation.quadratic, // default static

      //when a pointer that is in contact with the screen and moves to the right or left
      onDragUpdate: (double val, InnerDrawerDirection? direction) {
        // return values between 1 and 0
        // ignore: avoid_print
        print(val);
        // check if the swipe is to the right or to the left
        // ignore: avoid_print
        print(direction == InnerDrawerDirection.start);
      },
      innerDrawerCallback: (a) =>
          print(a), // return  true (open) or false (close)
      leftChild: MenuPage(), // required if rightChild is not set

      //  A Scaffold is generally used but you are free to use other widgets
      // Note: use "automaticallyImplyLeading: false" if you do not personalize "leading" of Bar
      scaffold: const MainPage(),
    );
  }

  //  Current State of InnerDrawerState
  final GlobalKey<InnerDrawerState> _innerDrawerKey =
      GlobalKey<InnerDrawerState>();
}
