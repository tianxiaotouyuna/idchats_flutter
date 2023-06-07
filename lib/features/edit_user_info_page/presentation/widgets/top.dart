import 'package:flutter/material.dart';

  class Top extends StatefulWidget {
	final bool isLoading;
	const Top({super.key,  required this.isLoading});
	@override
	State<Top> createState() => _TopState();
  }
  
  class _TopState extends State<Top> {
	@override
	Widget build(BuildContext context) {
	  return Container();
	  // return const BiuBiuLogin();
	}
  }
