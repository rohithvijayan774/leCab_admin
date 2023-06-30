import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RoutesTile extends StatelessWidget {
  int id;
  String pickUpLocation;
  String dropOffLocation;
  VoidCallback? onPress;
  RoutesTile(
      {required this.id,
      required this.pickUpLocation,
      required this.dropOffLocation,
      this.onPress,
      super.key});

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
        children: [
          const Icon(Icons.arrow_downward_rounded),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pickUpLocation,
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'SofiaPro',
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  dropOffLocation,
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'SofiaPro',
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
