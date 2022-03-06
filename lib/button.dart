import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback selectHandler;

  Button(this.title, this.selectHandler);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            textStyle: const TextStyle(
              fontSize: 20,
              color: Colors.blue,
            )),
        child: Text(title),
        onPressed: selectHandler,
      ),
    );
  }
}
