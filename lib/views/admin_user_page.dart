import 'package:flutter/material.dart';
import 'package:lecab_admin/provider/admin_details_provider.dart';
import 'package:lecab_admin/views/user_details.dart';
import 'package:lecab_admin/widgets/id_name_bar.dart';
import 'package:provider/provider.dart';

class AdminUserPage extends StatelessWidget {
  const AdminUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> users = [
      'Ajay',
      'Sanay',
      'Rohith',
      'Akshay',
      'Waleed',
      'Abhilash',
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
            "Users",
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
        return value.usersList.isEmpty
            ? const Center(
                child: Text('No Users Found'),
              )
            : ListView.separated(
                itemBuilder: (context, index) => IDNameBar(
                      id: value.usersList[index].id,
                      name:
                          '${value.usersList[index].firstName} ${value.usersList[index].surName}',
                      onPress: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => UserDetails(
                              id: value.usersList[index].id,
                              firstName: value.usersList[index].firstName,
                              surName: value.usersList[index].surName,
                              phoneNumber: value.usersList[index].phoneNumber,
                            ),
                          ),
                        );
                      },
                    ),
                separatorBuilder: (context, index) => const Divider(
                      indent: 10,
                      endIndent: 10,
                    ),
                itemCount: value.usersList.length);
      }),
    );
  }
}
