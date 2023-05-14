import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idchats_flutter/features/main_page/presentation/bloc/main_page_bloc.dart';

class RefreshControl extends StatefulWidget {
  const RefreshControl({super.key});
  @override
  State<RefreshControl> createState() => _RefreshControlState();
}

class _RefreshControlState extends State<RefreshControl> {
  final controller = TextEditingController();
  late String inputStr;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed:addConcrete,
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
      );
  }

  void addConcrete() {
    controller.clear();
    context.read<MainPageBloc>().add(const ReloadUserInfo('0x33399282928'));
  }

}
