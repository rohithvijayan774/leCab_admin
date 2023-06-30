import 'package:flutter/material.dart';
import 'package:lecab_admin/views/admin_login_page.dart';

class SplashScreenProvider extends ChangeNotifier {
  gotoNextPage(context) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const AdminLoginPage(),
      ),
    );

    notifyListeners();
  }
}
