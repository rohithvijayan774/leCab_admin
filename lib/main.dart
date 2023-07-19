import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lecab_admin/provider/admin_bottom_navbar_provider.dart';
import 'package:lecab_admin/provider/admin_details_provider.dart';
import 'package:lecab_admin/provider/graph_provider.dart';
import 'package:lecab_admin/provider/splash_screen_provider.dart';
import 'package:lecab_admin/views/admin_splash_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AdminBottomNavBarProvider>(
          create: (context) => AdminBottomNavBarProvider(),
        ),
        ChangeNotifierProvider<GraphProvider>(
          create: (context) => GraphProvider(),
        ),
        ChangeNotifierProvider<SplashScreenProvider>(
          create: (context) => SplashScreenProvider(),
        ),
        ChangeNotifierProvider<AdminDetailsProvider>(
          create: (context) => AdminDetailsProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'leCab Admin',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
