import 'package:flutter/material.dart';

	class Body extends StatefulWidget {
		final bool isLoading;
		const Body({super.key,  required this.isLoading});
		@override
		State<Body> createState() => _BodyState();
	  }
	  
	  class _BodyState extends State<Body> {
		@override
		Widget build(BuildContext context) {
		  return Container();
		}
	  }
