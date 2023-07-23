class Drivers {
  final String lastName;
  final String firstName;
  final String id;
  final String address;
  final String phoneNumber;
  final String profilePicture;
  final String licensePic;
  final String rcPic;
  final String insurancePic;
  final bool isApproved;
  final String vehicleType;

  Drivers(
      {required this.firstName,
      required this.id,
      required this.lastName,
      required this.address,
      required this.phoneNumber,
      required this.profilePicture,
      required this.licensePic,
      required this.rcPic,
      required this.insurancePic,
      required this.isApproved,
      required this.vehicleType,});
}
