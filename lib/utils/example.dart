// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';

// class Example extends StatelessWidget {
//   const Example({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Example List'),
//       ),
//       body: StreamBuilder(
//         stream: FirebaseFirestore.instance.collection('users').snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             QuerySnapshot usersSnapshot = snapshot.data!;
//             List<DocumentSnapshot> usersDocs = usersSnapshot.docs;
//             return ListView.builder(
//               itemCount: usersDocs.length,
//               itemBuilder: (context, index) {
//                 Map<String, dynamic> userData = usersDocs[index].data();

//                 String userName = userData['firstName'];
//                 String userId = userData['uid'];

//                 return ListTile(
//                   title: Text(userName),
//                   subtitle: Text(userId),
//                 );
//               },
//             );
//           } else if (snapshot.hasError) {
//             return Text('Error : ${snapshot.error}');
//           } else {
//             return CircularProgressIndicator();
//           }
//         },
//       ),
//     );
//   }
// }
