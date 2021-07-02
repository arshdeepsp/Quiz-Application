import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function placeHolderFunction;
  final String placeHolderText;

  Answer(this.placeHolderFunction, this.placeHolderText);

  @override
  Widget build(BuildContext buildContext) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.all(10),
      // ignore: deprecated_member_use
      child: RaisedButton(
        onPressed: placeHolderFunction,
        child: Text(placeHolderText),
        color: Colors.blue.shade200,
      ),
    );
  }
}
