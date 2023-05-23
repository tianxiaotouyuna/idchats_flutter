import 'package:flutter/material.dart';

import 'copy_button.dart';

class CopyableAddress extends StatelessWidget {
  const CopyableAddress({Key? key, required this.address}) : super(key: key);

  final String? address;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(address ?? ''),
          const SizedBox(height: 10),
          CopyButton(
            text: const Text('Copy address'),
            value: address??'Copy null error',
          ),
        ],
      ),
    );
  }
}
