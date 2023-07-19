import 'package:flutter/material.dart';
import 'package:lecab_admin/provider/admin_details_provider.dart';
import 'package:lecab_admin/views/driver_details.dart';
import 'package:lecab_admin/views/drivers_request_list.dart';
import 'package:lecab_admin/widgets/id_name_bar.dart';
import 'package:provider/provider.dart';

class AdminDriverPage extends StatelessWidget {
  const AdminDriverPage({super.key});

  @override
  Widget build(BuildContext context) {
    final adminDetailsPro =
        Provider.of<AdminDetailsProvider>(context, listen: false);
    // adminDetailsPro.fetchDrivers();
    // List<String> drivers = [
    //   'Rohith',
    //   'Ajay',
    //   'Akshay',
    //   'Sanay',
    //   'Abhilash',
    //   'Waleed'
    // ];
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
      body: Consumer<AdminDetailsProvider>(builder: (context, value, _) {
        return value.driversList.isEmpty
            ? const Center(
                child: Text('No Drivers Found'),
              )
            : ListView.separated(
                itemBuilder: (context, index) => IDNameBar(
                      id: value.driversList[index].id,
                      name:
                          '${value.driversList[index].firstName} ${value.driversList[index].lastName}',
                      onPress: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DriverDetails(
                                id: value.driversList[index].id,
                                name:
                                    '${value.driversList[index].firstName} ${value.driversList[index].lastName}'),
                          ),
                        );
                      },
                    ),
                separatorBuilder: (context, index) => const Divider(
                      indent: 10,
                      endIndent: 10,
                    ),
                itemCount: value.driversList.length);
      }),
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
