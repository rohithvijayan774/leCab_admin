import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lecab_admin/utils/drivers.dart';
import 'package:lecab_admin/views/admin_login_page.dart';
import 'package:lecab_admin/views/admin_splash_screen.dart';
import 'package:lecab_admin/widgets/admin_bottom_navbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdminDetailsProvider extends ChangeNotifier {
  AdminDetailsProvider() {
    checkSignedIn();
  }

  bool _isSignedIn = false;
  bool get isSignedIn => _isSignedIn;

  gotoNextPage(context) async {
    await Future.delayed(const Duration(seconds: 3));
    if (isSignedIn == false) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const AdminLoginPage(),
        ),
      );
    } else {
      fetchDrivers();
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const AdminBottomNavBar(),
        ),
      );
    }

    notifyListeners();
  }

//---------------------------Admin Login Details--------------------------

  String userName = 'rohithvijayan774@gmail.com';
  String password = '123';

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  checkAdminLogin(BuildContext context) {
    if (userNameController.text == userName &&
        passwordController.text == password) {
      setSignIn();
      isSignedIn == true;
      fetchDrivers();
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const AdminBottomNavBar(),
        ),
      );
    } else {
      log('Incorrect details');
    }
    notifyListeners();
  }

  adminLogout(BuildContext context) async {
    isSignedIn == false;
    userNameController.clear();
    passwordController.clear();
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => const SplashScreen()),
        (route) => false);

    notifyListeners();
  }

  Future setSignIn() async {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();
    sharedPref.setBool('is_signedIn', true);
    _isSignedIn = true;
    log('Signed In = True');
    notifyListeners();
  }

  Future setSignOut() async {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();
    sharedPref.setBool('is_signedIn', false);
    _isSignedIn = false;
    log('SignedIn = False');
    notifyListeners();
  }

  void checkSignedIn() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    _isSignedIn = sharedPreferences.getBool('is_signedIn') ?? false;
    notifyListeners();
  }

  //----------------------Get Collections Datas-----------------------

  Future<int> getDocumentsCount(String collectionName) async {
    CollectionReference collectionRef =
        FirebaseFirestore.instance.collection(collectionName);
    QuerySnapshot snapshot = await collectionRef.get();
    int totalDocument = snapshot.size;
    return totalDocument;
  }

  //-----Get Drivers List
  List<Drivers> driversList = [];
  Drivers? driver;

  void fetchDrivers() async {
    print('Fetch Drivers called');
    driversList.clear();
    CollectionReference driversRef =
        FirebaseFirestore.instance.collection('drivers');
    QuerySnapshot driverSnapshot = await driversRef.get();

    driverSnapshot.docs.forEach((doc) {
      String driverFirstName = doc['driverFirstName'];
      String driverLastName = doc['driverSurName'];
      String driverId = doc['driverid'];

      driver = Drivers(
          firstName: driverFirstName, id: driverId, lastName: driverLastName);

      driversList.add(driver!);
    });
    print('Fetching Completed');
    notifyListeners();
  }

  clearDriversList() {
    driversList.clear();
    notifyListeners();
  }

  //------Get Users and Drivers Count-----------------------------

  int usersCount = 0;

  int driversCount = 0;

  findUsersCount() async {
    usersCount = await getDocumentsCount('users');
    driversCount = await getDocumentsCount('drivers');
    log('Total Users : $usersCount');
    log('Total Drivers : $driversCount');
    notifyListeners();
  }
}
