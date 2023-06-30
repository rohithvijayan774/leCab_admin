import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DashBoardCard extends StatelessWidget {
  String title;
  int count;
  VoidCallback? onPress;
  DashBoardCard(
      {required this.title, required this.count, this.onPress, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 70,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'SofiaPro',
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "$count",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Poppins',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
