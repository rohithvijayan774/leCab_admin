import 'package:flutter/material.dart';
import 'package:lecab_admin/views/booking_details.dart';
import 'package:lecab_admin/widgets/routes_tile.dart';

class AdminBookingPage extends StatelessWidget {
  const AdminBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> drivers = [
      'Rohith',
      'Ajay',
      'Akshay',
      'Sanay',
    ];

    List<String> users = [
      'Ajay',
      'Sanay',
      'Rohith',
      'Akshay',
    ];

    List<String> pickUpLocations = [
      "HiLite Mall",
      "Railwaystation 4th Platform Road",
      "SM Street, Palayam, Kozhikode, Kerala",
      "Cyberpark Kozhikode",
    ];

    List<String> dropOffLocations = [
      "Cyberpark Kozhikode",
      "SM Street, Palayam, Kozhikode, Kerala",
      "Railwaystation 4th Platform Road",
      "HiLite Mall",
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Padding(
          padding: EdgeInsets.only(
            left: 10,
            top: 10,
          ),
          child: Text(
            "Bookings",
            style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),
          ),
        ),
        bottom: AppBar(
          centerTitle: true,
          leading: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ID',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'SofiaPro',
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          title: const Text(
            'Routes',
            style: TextStyle(
                fontSize: 25,
                fontFamily: 'SofiaPro',
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => RoutesTile(
                id: index + 1,
                pickUpLocation: pickUpLocations[index],
                dropOffLocation: dropOffLocations[index],
                onPress: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RouteDetails(
                        id: index + 1,
                        pickUpLocation: pickUpLocations[index],
                        dropOffLocation: dropOffLocations[index],
                        passenger: users[index],
                        driver: drivers[index]),
                  ));
                },
              ),
          separatorBuilder: (context, index) => const Divider(
                indent: 10,
                endIndent: 10,
              ),
          itemCount: pickUpLocations.length),
    );
  }
}
