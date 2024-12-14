import 'package:flutter/material.dart';

class ScientificButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? color;

  const ScientificButton({
    required this.label,
    required this.onPressed,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color ?? Colors.blue.shade100,
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
