import 'package:flutter/material.dart';
import 'package:lecab_admin/provider/admin_details_provider.dart';
import 'package:lecab_admin/provider/splash_screen_provider.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final adminDetailsProLF =
        Provider.of<AdminDetailsProvider>(context, listen: false);
    adminDetailsProLF.gotoNextPage(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "leCab.",
              style: TextStyle(
                  fontSize: 80,
                  fontFamily: "Fabada",
                  fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Admin",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Fabada",
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            LoadingAnimationWidget.newtonCradle(color: Colors.black, size: 100),
          ],
        ),
      ),
    );
  }
}
