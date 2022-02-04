import 'dart:async';

import 'package:flutter/material.dart';

class TextFiled extends StatefulWidget {
  _TextFiledState createState() => _TextFiledState();
}

class _TextFiledState extends State<TextFiled> {
  String _expression = '1+1';

  final controller = StreamController<String>();

  void _updateText(String letter) {
    setState(() {
      if (letter == '=' || letter == 'C')
        _expression = '';
      else
        _expression += letter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              _expression,
              style: TextStyle(
                fontSize: 64.0,
              ),
            ),
          ),
        ));
  }

  @override
  void initState() {
    controller.stream.listen((event) => _updateText(event));
    super.initState();
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }
}
