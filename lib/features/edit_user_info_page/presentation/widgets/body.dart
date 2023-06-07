import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:idchats_flutter/core/widgets/biu_biu_login/biu_biu_login.dart';

  class Body extends StatefulWidget {
	const Body({super.key});
	@override
	State<Body> createState() => _BodyState();
  }
  
  class _BodyState extends State<Body> {
	@override
	Widget build(BuildContext context) {
	  return  BiuBiuLogin(pageContent: context).toCenter();
	}
  }
