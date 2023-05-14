import 'package:flutter/material.dart';

class Cell extends StatelessWidget {
  final String text;
  final String icon;

  Cell({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // 左侧的图标
            Image.asset(
              icon,
              width: 20,
              height: 20,
            ),
            SizedBox(width: 8), // 添加一些间距
            // 左侧的文字
            Text(text, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
