import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({super.key, required this.text, required this.onPressesd});
  final String text;
  VoidCallback onPressesd;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressesd,
      color: Theme.of(context).primaryColor,
      child: Text(text),
    );
  }
}
