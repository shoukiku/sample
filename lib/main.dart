import 'package:flutter/material.dart';
import 'package:sample/text_field.dart';

import 'keyboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextFiled(),
        Keyboard(),
      ],
    )));
  }
}
