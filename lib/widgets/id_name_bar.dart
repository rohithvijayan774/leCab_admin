import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IDNameBar extends StatelessWidget {
  String id;
  String name;
  VoidCallback? onPress;
  IDNameBar({required this.id, required this.name, this.onPress, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 100,
        child: Text(
          id,
          style: const TextStyle(
              fontSize: 20,
              fontFamily: 'SofiaPro',
              fontWeight: FontWeight.w500,
              overflow: TextOverflow.ellipsis),
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(
          fontSize: 20,
          fontFamily: 'SofiaPro',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
