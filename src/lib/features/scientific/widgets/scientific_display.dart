import 'package:flutter/material.dart';

class ScientificDisplay extends StatelessWidget {
  final String displayText;

  const ScientificDisplay({
    required this.displayText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      alignment: Alignment.bottomRight,
      child: Text(
        displayText,
        style: const TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
