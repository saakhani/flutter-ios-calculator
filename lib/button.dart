import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color bgColor;
  final Color textColor;

  const Button(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.bgColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: const CircleBorder(),
      color: bgColor,
      onPressed: (){onPressed();},
      child: Container(
        height: 85,
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 38, color: textColor, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
