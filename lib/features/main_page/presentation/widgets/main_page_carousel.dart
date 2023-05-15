import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idchats_flutter/features/main_page/presentation/bloc/main_page_bloc.dart';

class MainPageCarouse extends StatefulWidget {
  const MainPageCarouse({super.key});
  @override
  State<MainPageCarouse> createState() => _MainPageCarouseState();
}

class _MainPageCarouseState extends State<MainPageCarouse> {
  final controller = TextEditingController();
  late String inputStr;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 400.0),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.amber),
                child: Text(
                  'text $i',
                  style: TextStyle(fontSize: 16.0),
                ));
          },
        );
      }).toList(),
    );
  }

  void addConcrete() {
    controller.clear();
    context.read<MainPageBloc>().add(const ReloadUserInfo('0x33399282928'));
  }
}
