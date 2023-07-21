import 'package:flutter/material.dart';

class VehDocViewer extends StatelessWidget {
  final String? profilePic;
  final String? licensePic;
  final String? rcPic;
  final String? insurancePic;
  const VehDocViewer(
      {required this.profilePic,
      required this.licensePic,
      required this.rcPic,
      required this.insurancePic,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Documents',
          style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Profile Picture',
                style: TextStyle(
                  fontFamily: 'SofiaPro',
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FutureBuilder<void>(
                  future: precacheImage(NetworkImage(profilePic!), context),
                  builder: (context, snapShot) {
                    if (snapShot.connectionState == ConnectionState.waiting) {
                      return const SizedBox(
                        width: double.infinity,
                        height: 400,
                        child: Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                        ),
                      );
                    } else if (snapShot.hasError) {
                      return const SizedBox(
                        width: double.infinity,
                        height: 400,
                        child: Center(
                          child: Text('Error Loading Image'),
                        ),
                      );
                    } else {
                      return Container(
                        width: double.infinity,
                        height: 400,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(profilePic!),
                          ),
                        ),
                      );
                    }
                  }),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Driving License',
                style: TextStyle(
                  fontFamily: 'SofiaPro',
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FutureBuilder<void>(
                  future: precacheImage(NetworkImage(licensePic!), context),
                  builder: (context, snapShot) {
                    if (snapShot.connectionState == ConnectionState.waiting) {
                      return const SizedBox(
                        width: double.infinity,
                        height: 400,
                        child: Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                        ),
                      );
                    } else if (snapShot.hasError) {
                      return const SizedBox(
                        width: double.infinity,
                        height: 400,
                        child: Center(
                          child: Text('Error Loading Image'),
                        ),
                      );
                    } else {
                      return Container(
                        width: double.infinity,
                        height: 400,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(licensePic!),
                          ),
                        ),
                      );
                    }
                  }),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Registration Certifiacte (RC)',
                style: TextStyle(
                  fontFamily: 'SofiaPro',
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FutureBuilder<void>(
                  future: precacheImage(NetworkImage(rcPic!), context),
                  builder: (context, snapShot) {
                    if (snapShot.connectionState == ConnectionState.waiting) {
                      return const SizedBox(
                        width: double.infinity,
                        height: 400,
                        child: Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                        ),
                      );
                    } else if (snapShot.hasError) {
                      return const SizedBox(
                        width: double.infinity,
                        height: 400,
                        child: Center(
                          child: Text('Error Loading Image'),
                        ),
                      );
                    } else {
                      return Container(
                        width: double.infinity,
                        height: 400,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(rcPic!),
                          ),
                        ),
                      );
                    }
                  }),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Vehicle Insurance',
                style: TextStyle(
                  fontFamily: 'SofiaPro',
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FutureBuilder<void>(
                  future: precacheImage(NetworkImage(insurancePic!), context),
                  builder: (context, snapShot) {
                    if (snapShot.connectionState == ConnectionState.waiting) {
                      return const SizedBox(
                        width: double.infinity,
                        height: 400,
                        child: Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                        ),
                      );
                    } else if (snapShot.hasError) {
                      return const SizedBox(
                        width: double.infinity,
                        height: 400,
                        child: Center(
                          child: Text('Error Loading Image'),
                        ),
                      );
                    } else {
                      return Container(
                        width: double.infinity,
                        height: 400,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(insurancePic!),
                          ),
                        ),
                      );
                    }
                  }),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
