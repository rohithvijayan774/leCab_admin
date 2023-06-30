import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IDNameBar extends StatelessWidget {
  int id;
  String name;
  VoidCallback? onPress;
  IDNameBar({required this.id, required this.name, this.onPress, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Text(
        "$id",
        style: const TextStyle(
          fontSize: 20,
          fontFamily: 'SofiaPro',
          fontWeight: FontWeight.w500,
        ),
      ),
      title: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 100,
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 20,
              fontFamily: 'SofiaPro',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
