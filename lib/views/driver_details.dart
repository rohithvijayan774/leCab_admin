import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lecab_admin/provider/admin_details_provider.dart';
import 'package:lecab_admin/utils/veh_doc_viewer.dart';
import 'package:provider/provider.dart';

class DriverDetails extends StatelessWidget {
  final String id;
  final String firstName;
  final String lastName;
  final String phone;
  final String address;
  final String profilePicture;
  final String licensePic;
  final String rcPic;
  final String insurancePic;
  const DriverDetails({
    required this.id,
    required this.firstName,
    required this.lastName,
    super.key,
    required this.phone,
    required this.address,
    required this.profilePicture,
    required this.licensePic,
    required this.rcPic,
    required this.insurancePic,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: Text(
            firstName,
            style: const TextStyle(fontSize: 30, fontFamily: 'Poppins'),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
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
                      id,
                      style:
                          const TextStyle(fontSize: 25, fontFamily: 'SofiaPro'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Name',
                      style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),
                    ),
                    Text(
                      "$firstName $lastName",
                      style:
                          const TextStyle(fontSize: 25, fontFamily: 'SofiaPro'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Phone',
                      style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),
                    ),
                    Text(
                      phone,
                      style:
                          const TextStyle(fontSize: 25, fontFamily: 'SofiaPro'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Address',
                      style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),
                    ),
                    Text(
                      address,
                      style:
                          const TextStyle(fontSize: 25, fontFamily: 'SofiaPro'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Vehicle Type',
                      style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),
                    ),
                    const Text(
                      'Car',
                      style: TextStyle(fontSize: 25, fontFamily: 'SofiaPro'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer<AdminDetailsProvider>(builder: (context, value, _) {
                    return ElevatedButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(Colors.grey),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VehDocViewer(
                                      profilePic: profilePicture,
                                      licensePic: licensePic,
                                      rcPic: rcPic,
                                      insurancePic: insurancePic,
                                    )));
                      },
                      child: const Text(
                        "Vehicle Documents",
                        style: TextStyle(
                          fontFamily: 'SofiaPro',
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.grey),
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
                onPressed: () {},
                child: const Text(
                  "Block",
                  style: TextStyle(
                    fontFamily: 'SofiaPro',
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.grey),
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
                onPressed: () {},
                child: const Text(
                  "Unavailable",
                  style: TextStyle(
                    fontFamily: 'SofiaPro',
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.grey),
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
                onPressed: () {},
                child: const Text(
                  "Remove",
                  style: TextStyle(
                    fontFamily: 'SofiaPro',
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
