import 'package:flutter/material.dart';

class DefaultTextButton extends StatelessWidget {
  const DefaultTextButton({super.key, this.function, required this.text, required this.style});
  final void Function()? function;
  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: function,
        child: Text('${text}',style: style,)
    );
  }
}
