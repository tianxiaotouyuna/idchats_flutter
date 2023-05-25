import 'package:flutter/material.dart';

  class Bottom extends StatefulWidget {
	final bool isLoading;
	const Bottom({super.key,  required this.isLoading});
	@override
	State<Bottom> createState() => _BottomState();
  }
  
  class _BottomState extends State<Bottom> {
	@override
	Widget build(BuildContext context) {
	  return Container();
	}
  }
