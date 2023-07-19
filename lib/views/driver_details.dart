import 'package:flutter/material.dart';

class DriverDetails extends StatelessWidget {
  final String id;
  final String name;
  const DriverDetails({required this.id, required this.name, super.key});

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
            name,
            style: const TextStyle(fontSize: 30, fontFamily: 'Poppins'),
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
                    id,
                    style:
                        const TextStyle(fontSize: 25, fontFamily: 'SofiaPro'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Name',
                    style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),
                  ),
                  Text(
                    name,
                    style:
                        const TextStyle(fontSize: 30, fontFamily: 'SofiaPro'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Phone',
                    style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),
                  ),
                  const Text(
                    'XXXXXXXXX',
                    style: TextStyle(fontSize: 30, fontFamily: 'SofiaPro'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Address',
                    style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),
                  ),
                  const Text(
                    'XXXXXXXXX\nXXXXXXXXXX\nXXXXXXXXXXX',
                    style: TextStyle(fontSize: 30, fontFamily: 'SofiaPro'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Vehicle Type',
                    style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),
                  ),
                  const Text(
                    'Car',
                    style: TextStyle(fontSize: 30, fontFamily: 'SofiaPro'),
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
                ElevatedButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.grey),
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Vehicle Documents",
                    style: TextStyle(
                      fontFamily: 'SofiaPro',
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
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
