import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  final String resetText;
  final Function resetterFunc;

  Reset(this.resetText, this.resetterFunc);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Center(
        child: FloatingActionButton(
          onPressed: resetterFunc,
          child: Text(
            resetText,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
