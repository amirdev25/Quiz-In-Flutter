import 'package:flutter/material.dart';

class AnswerBtn extends StatelessWidget {
  String title = "";
  final VoidCallback selectHandle;

  AnswerBtn(this.title, this.selectHandle);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: selectHandle,
        child: Text(title),
      ),
    );
  }
}
