import 'package:flutter/material.dart';
import 'package:lecab_admin/views/driver_details.dart';
import 'package:lecab_admin/views/drivers_request_list.dart';
import 'package:lecab_admin/widgets/id_name_bar.dart';

class AdminDriverPage extends StatelessWidget {
  const AdminDriverPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> drivers = [
      'Rohith',
      'Ajay',
      'Akshay',
      'Sanay',
      'Abhilash',
      'Waleed'
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
            "Drivers",
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
                name: drivers[index],
                onPress: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          DriverDetails(id: index + 1, name: drivers[index]),
                    ),
                  );
                },
              ),
          separatorBuilder: (context, index) => const Divider(
                indent: 10,
                endIndent: 10,
              ),
          itemCount: drivers.length),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const DriversRequestList(),
          ));
        },
        label: const Text(
          'Requests',
          style: TextStyle(color: Colors.white, fontFamily: 'SofiaPro'),
        ),
      ),
    );
  }
}
