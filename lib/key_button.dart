import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KeyButton extends StatelessWidget {
  final _key;
  KeyButton(this._key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
      onPressed: () {},
      child: Center(
        child: Text(
          _key,
          style: TextStyle(fontSize: 46.0),
        ),
      ),
    ));
  }
}
