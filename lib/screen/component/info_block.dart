import 'package:flutter/material.dart';

class InfoBlock extends StatelessWidget {
  final String label;
  final List<String> lines;

  const InfoBlock({required this.label, required this.lines});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 4),
        ...lines.map(
              (line) => Text(
            line,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
