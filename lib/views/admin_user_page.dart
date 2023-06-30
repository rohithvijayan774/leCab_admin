import 'package:flutter/material.dart';
import 'package:lecab_admin/views/user_details.dart';
import 'package:lecab_admin/widgets/id_name_bar.dart';

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
      body: ListView.separated(
          itemBuilder: (context, index) => IDNameBar(
                id: index + 1,
                name: users[index],
                onPress: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        UserDetails(id: index + 1, name: users[index]),
                  ));
                },
              ),
          separatorBuilder: (context, index) => const Divider(
                indent: 10,
                endIndent: 10,
              ),
          itemCount: users.length),
    );
  }
}
