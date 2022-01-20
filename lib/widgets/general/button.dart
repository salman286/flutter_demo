import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final Color? backgroundColor;
  final TextStyle textStyle;
  final Function() onPress;

  const Button({
    Key? key,
    required this.label,
    required this.onPress,
    this.backgroundColor,
    this.textStyle = const TextStyle(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 43,
            vertical: 10,
          ),
          primary: backgroundColor ?? Theme.of(context).primaryColor,
          elevation: 7,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
        ),
        child: Text(
          label.toUpperCase(),
          style: textStyle.copyWith(
            color: textStyle.color ?? Colors.white,
            fontWeight: textStyle.fontWeight ?? FontWeight.bold,
            fontSize: textStyle.fontSize ?? 10.0,
          ),
        ));
  }
}
