import 'package:flutter/material.dart';
import 'package:lecab_admin/provider/admin_details_provider.dart';
import 'package:lecab_admin/views/requested_driver_details.dart';
import 'package:lecab_admin/widgets/id_name_bar.dart';
import 'package:provider/provider.dart';

class DriversRequestList extends StatelessWidget {
  const DriversRequestList({super.key});

  @override
  Widget build(BuildContext context) {
    final adminDetailsProLF =
        Provider.of<AdminDetailsProvider>(context, listen: false);
    adminDetailsProLF.fetchDrivers();
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
      body: Consumer<AdminDetailsProvider>(builder: (context, value, _) {
        return value.driversReqList.isEmpty
            ? const Center(
                child: Text('No Drivers Request Found'),
              )
            : ListView.separated(
                itemBuilder: (context, index) => IDNameBar(
                      id: value.driversReqList[index].id,
                      name:
                          '${value.driversReqList[index].firstName} ${value.driversReqList[index].lastName}',
                      onPress: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => RequestedDriverDetails(
                              id: value.driversReqList[index].id,
                              firstName: value.driversReqList[index].firstName,
                              lastName: value.driversReqList[index].lastName,
                              phone: value.driversReqList[index].phoneNumber,
                              address: value.driversReqList[index].address,
                              profilePicture:
                                  value.driversReqList[index].profilePicture,
                              licensePic:
                                  value.driversReqList[index].licensePic,
                              rcPic: value.driversReqList[index].rcPic,
                              insurancePic:
                                  value.driversReqList[index].insurancePic,
                              vehicleType:
                                  value.driversReqList[index].vehicleType,
                            ),
                          ),
                        );
                      },
                    ),
                separatorBuilder: (context, index) => const Divider(
                      indent: 10,
                      endIndent: 10,
                    ),
                itemCount: value.driversReqList.length);
      }),
      // body: ListView.separated(
      //     itemBuilder: (context, index) => IDNameBar(
      //           id: "${index + 1}",
      //           name: driversRequest[index],
      //           onPress: () {
      //             Navigator.of(context).push(
      //               MaterialPageRoute(
      //                 builder: (context) => RequestedDriverDetails(
      //                     id: index + 1, name: driversRequest[index]),
      //               ),
      //             );
      //           },
      //         ),
      //     separatorBuilder: (context, index) => const Divider(
      //           indent: 10,
      //           endIndent: 10,
      //         ),
      //     itemCount: driversRequest.length),
    );
  }
}
