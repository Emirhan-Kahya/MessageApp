import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key,
        required this.text,
        required this.press,
        this.color = Colors.greenAccent,
        this.padding = const EdgeInsets.all(20 * 0.75)})
      : super(key: key);
  final String text;
  final VoidCallback press;
  final color;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: press,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(40.0),
        ),
      ),
      padding: padding,
      color: color,
      minWidth: double.infinity,
      child: Text(text, style: TextStyle(color: Colors.white),),
    );
  }
}