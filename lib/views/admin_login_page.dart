import 'package:flutter/material.dart';
import 'package:lecab_admin/provider/admin_details_provider.dart';
import 'package:provider/provider.dart';

class AdminLoginPage extends StatelessWidget {
  const AdminLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final adminDetailsPro =
        Provider.of<AdminDetailsProvider>(context, listen: false);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(fontSize: 50, fontFamily: 'Poppins'),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: adminDetailsPro.userNameController,
                  decoration: const InputDecoration(
                      hintText: 'Username',
                      hintStyle: TextStyle(fontFamily: 'SofiaPro'),
                      icon: Icon(Icons.mail_outline_sharp)),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  obscureText: true,
                  controller: adminDetailsPro.passwordController,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(fontFamily: 'SofiaPro'),
                    icon: Icon(Icons.security_outlined),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(Colors.grey),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                        minimumSize: MaterialStateProperty.all(
                          const Size(200, 50),
                        ),
                      ),
                      onPressed: () async {
                        adminDetailsPro.checkAdminLogin(context);

                        // PermissionStatus locationPermission =
                        //     await Permission.location.request();

                        // if (locationPermission == PermissionStatus.granted) {
                        //   Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => const UserBottomNavBar(),
                        //   ));
                        // }

                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => const AdminBottomNavBar(),
                        //   ),
                        // );
                      },
                      child: const Text(
                        "Login",
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
        ),
      ),
    );
  }
}
