import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GraphColorNote extends StatelessWidget {
  String label;
  Color color;
  GraphColorNote({required this.label, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 2,
          width: 40,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          label,
          style: const TextStyle(
              fontFamily: 'SofiaPro',
              fontSize: 15,
              fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
