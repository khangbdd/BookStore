import 'package:flutter/cupertino.dart';

class AddressCardInfo {
  AddressCardInfo(
      this.name,
      this.phoneNumber,
      this.addressLane,
      this.district,
      this.city,
      this.isChose);
  String name;
  String phoneNumber;
  String addressLane;
  String district;
  String city;
  bool isChose;
}
