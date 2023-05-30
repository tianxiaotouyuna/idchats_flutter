import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:idchats_flutter/core/util/color_utils.dart';
import 'package:idchats_flutter/features/main_page/presentation/pages/main_page.dart';
import 'package:idchats_flutter/features/menu_page/presentation/page/menu_page.dart';

final GlobalKey<InnerDrawerState> _innerDrawerKey =
      GlobalKey<InnerDrawerState>();

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});
   @override
  AppDrawerState createState() => AppDrawerState();
}
class AppDrawerState extends State<AppDrawer> {
  void toggle()
    {
       _innerDrawerKey.currentState?.toggle(
        direction: InnerDrawerDirection.end 
       );
    }
  @override
  Widget build(BuildContext context) {
    return InnerDrawer(
      key: _innerDrawerKey,
      onTapClose: true, // default false
      swipe: true, // default true
      colorTransitionChild:ColorUtils.colorFromHex('#0F1526'), // default Color.black54
      colorTransitionScaffold: Colors.black54, // default Color.black54
      backgroundDecoration: BoxDecoration(color: ColorUtils.colorFromHex('#0F1526')), // default  Theme.of(context).backgroundColor
      offset: const IDOffset.horizontal(0.5),
      scale:const IDOffset.horizontal(0.8), // set the offset in both directions

      proportionalChildArea: true, // default true
      borderRadius: 50, // default 0
      leftAnimationType: InnerDrawerAnimation.quadratic, // default static

      //when a pointer that is in contact with the screen and moves to the right or left
      onDragUpdate: (double val, InnerDrawerDirection? direction) {
      },
      innerDrawerCallback: (a) =>{}, // return  true (open) or false (close)
      leftChild:  const MenuPage() , // required if rightChild is not set
      scaffold:  MainPage(parentKey: _innerDrawerKey) ,
    );
  }
}
