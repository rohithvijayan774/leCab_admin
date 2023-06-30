import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RouteDetails extends StatelessWidget {
  int id;
  String pickUpLocation;
  String dropOffLocation;
  String passenger;
  String driver;
  RouteDetails(
      {required this.id,
      required this.pickUpLocation,
      required this.dropOffLocation,
      required this.passenger,
      required this.driver,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Padding(
          padding:  EdgeInsets.only(
            top: 10,
          ),
          child: Text(
            'Route Details',
            style:  TextStyle(fontSize: 30, fontFamily: 'Poppins'),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'ID',
                    style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),
                  ),
                  Text(
                    "$id",
                    style:
                        const TextStyle(fontSize: 30, fontFamily: 'SofiaPro'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Pickup Location',
                    style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),
                  ),
                  Text(
                    pickUpLocation,
                    style:
                        const TextStyle(fontSize: 30, fontFamily: 'SofiaPro'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Dropoff Location',
                    style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),
                  ),
                  Text(
                    dropOffLocation,
                    style:
                        const TextStyle(fontSize: 30, fontFamily: 'SofiaPro'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Passenger',
                    style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),
                  ),
                  Text(
                    passenger,
                    style:
                        const TextStyle(fontSize: 30, fontFamily: 'SofiaPro'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Driver',
                    style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),
                  ),
                  Text(
                    driver,
                    style:
                        const TextStyle(fontSize: 30, fontFamily: 'SofiaPro'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
