import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:lecab_admin/provider/admin_bottom_navbar_provider.dart';
import 'package:provider/provider.dart';

class AdminBottomNavBar extends StatelessWidget {
  const AdminBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomNavBarPro = Provider.of<AdminBottomNavBarProvider>(context);
    return Scaffold(
      body: bottomNavBarPro.pages[bottomNavBarPro.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        useLegacyColorScheme: false,
        selectedItemColor: Colors.black,
        currentIndex: bottomNavBarPro.currentIndex,
        onTap: (index) {
          // pro.currentIndex = index;
          bottomNavBarPro.updateIndex(index);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard_outlined,
              ),
              label: 'Dashboard'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Drivers',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
              ),
              label: 'Users'),
          BottomNavigationBarItem(
              icon: Icon(
                EvaIcons.list,
              ),
              label: 'Bookings'),
        ],
      ),
    );
  }
}
