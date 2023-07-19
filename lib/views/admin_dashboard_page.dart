import 'package:flutter/material.dart';
import 'package:lecab_admin/provider/admin_details_provider.dart';
import 'package:lecab_admin/provider/graph_provider.dart';
import 'package:lecab_admin/utils/example.dart';
import 'package:lecab_admin/widgets/dash_board_card.dart';
import 'package:lecab_admin/widgets/graph_color_note.dart';
import 'package:lecab_admin/widgets/line_graph_widget.dart';
import 'package:provider/provider.dart';

class AdminDashboardPage extends StatelessWidget {
  const AdminDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final adminDetailsPro =
        Provider.of<AdminDetailsProvider>(context, listen: false);
    final graphProvider = Provider.of<GraphProvider>(context, listen: false);

    adminDetailsPro.findUsersCount();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Dashboard",
                style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),
              ),
              TextButton(
                onPressed: () async {
                  await adminDetailsPro.setSignOut();
                  adminDetailsPro.adminLogout(context);
                },
                child: const Text(
                  'Logout',
                  style: TextStyle(fontSize: 20, fontFamily: 'SofiaPro'),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DashBoardCard(title: 'Total Rides', count: 0),
                Consumer<AdminDetailsProvider>(builder: (context, value, _) {
                  return DashBoardCard(
                      title: 'Drivers', count: value.driversCount);
                }),
                Consumer<AdminDetailsProvider>(builder: (context, value, _) {
                  return DashBoardCard(title: 'Users', count: value.usersCount);
                }),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 300,
              child: LineGraphWidget(
                graphProvider.createSampleData(),
                animate: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GraphColorNote(label: 'Auto', color: Colors.blue),
                GraphColorNote(label: 'Car', color: Colors.red),
                GraphColorNote(label: 'SUV', color: Colors.yellow)
              ],
            ),
            // SizedBox(
            //   height: 100,
            //   child: PieChartWidget(
            //     graphProvider.createSampleData(),
            //     animate: true,
            //   ),
            // ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => const Example(),
      //       ));
      // }),
    );
  }
}
