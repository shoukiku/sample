import 'package:flutter/material.dart';

import 'key_button.dart';

class Keyboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Center(
            child: Container(
          color: const Color(0xff87cefa),
          child: GridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 3.0,
            crossAxisSpacing: 3.0,
            children: [
              '7',
              '8',
              '9',
              '÷',
              '4',
              '5',
              '6',
              '×',
              '1',
              '2',
              '3',
              '-',
              'C',
              '0',
              '=',
              '+',
            ].map((key) {
              return GridTile(
                child: KeyButton(key),
              );
            }).toList(),
          ),
        )));
  }
}
