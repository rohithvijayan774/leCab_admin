import 'package:flutter/material.dart';
import 'package:lecab_admin/views/admin_booking_page.dart';
import 'package:lecab_admin/views/admin_driver_page.dart';
import 'package:lecab_admin/views/admin_dashboard_page.dart';
import 'package:lecab_admin/views/admin_user_page.dart';

class AdminBottomNavBarProvider extends ChangeNotifier {
  int currentIndex = 0;

  List<Widget> pages = [
    const AdminDashboardPage(),
    const AdminDriverPage(),
    const AdminUserPage(),
    const AdminBookingPage()
  ];

  updateIndex(int newIndex) {
    currentIndex = newIndex;
    notifyListeners();
  }
}
