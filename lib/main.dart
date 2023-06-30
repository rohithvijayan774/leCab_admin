import 'package:flutter/material.dart';
import 'package:lecab_admin/provider/admin_bottom_navbar_provider.dart';
import 'package:lecab_admin/provider/graph_provider.dart';
import 'package:lecab_admin/provider/splash_screen_provider.dart';
import 'package:lecab_admin/views/admin_splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
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
