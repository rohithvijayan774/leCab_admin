import 'package:flutter/material.dart';
import 'package:lecab_admin/views/requested_driver_details.dart';
import 'package:lecab_admin/widgets/id_name_bar.dart';

class DriversRequestList extends StatelessWidget {
  const DriversRequestList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> driversRequest = [
      'Waleed',
      'Ajay',
      'Rohith',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(
            left: 10,
            top: 10,
          ),
          child: Text(
            "Drivers Requests",
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
            'Name',
            style: TextStyle(
                fontSize: 25,
                fontFamily: 'SofiaPro',
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => IDNameBar(
                id: index + 1,
                name: driversRequest[index],
                onPress: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => RequestedDriverDetails(
                          id: index + 1, name: driversRequest[index]),
                    ),
                  );
                },
              ),
          separatorBuilder: (context, index) => const Divider(
                indent: 10,
                endIndent: 10,
              ),
          itemCount: driversRequest.length),
    );
  }
}
