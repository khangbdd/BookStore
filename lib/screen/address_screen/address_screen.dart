import 'package:book_store/Class/AddressCardInfo.dart';
import 'package:book_store/screen/address_screen/Components/address_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key key}) : super(key: key);

  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {

  List<AddressCardInfo> lstAddressCard = [AddressCardInfo("Bùi Dương Duy Khang", "0933171801",
  "KTX khu B", "Đông Hòa", "Bình Dương", true),
  AddressCardInfo("Bùi Dương Duy Khang1", "0933171801",
  "KTX khu B", "Đông Hòa", "Bình Dương", false),
  AddressCardInfo("Bùi Dương Duy Khang2", "0933171801",
  "KTX khu B", "Đông Hòa", "Bình Dương", false),
  AddressCardInfo("Bùi Dương Duy Khang3", "0933171801",
  "KTX khu B", "Đông Hòa", "Bình Dương", false),
  AddressCardInfo("Bùi Dương Duy Khang4", "0933171801",
  "KTX khu B", "Đông Hòa", "Bình Dương", false),
  AddressCardInfo("Bùi Dương Duy Khang5", "0933171801",
  "KTX khu B", "Đông Hòa", "Bình Dương", false),];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  "Select your address",
                  style: TextStyle(
                      fontFamily: "Roboto-Regular",
                      fontSize: 13,
                      color: Color(0xff0F52BA)),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  height: 390,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, index) {
                        return Dismissible(
                          direction: DismissDirection.startToEnd,
                            key: UniqueKey(),
                            background: Container(decoration: BoxDecoration(color: Colors.redAccent,borderRadius: const BorderRadius.all(Radius.circular(10)))),
                            onDismissed: (direction) {
                                lstAddressCard.removeAt(index);
                            },
                            child: AddressItem(
                              addressCardInfo: lstAddressCard[index],
                            ));
                      },
                      separatorBuilder: (BuildContext context, index) {
                        return SizedBox(
                          height: 2,
                        );
                      },
                      itemCount: lstAddressCard.length),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 170),
                child: SizedBox(
                  height: 45,
                  width: 400,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(18)))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 70.0),
                            child: Text(
                              "CONTINUE WITH PAYMENT",
                              style: TextStyle(
                                  fontFamily: "Roboto-Bold",
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15),
                            ),
                          ),
                          Image.asset("assets/images/continueIcon.png")
                        ],
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xffFAFAFA),
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Color(0xff858C94),
        onPressed: () {},
      ),
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(left: 85),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "Address",
            style: TextStyle(
                fontSize: 20, fontFamily: "Roboto-Bold", color: Colors.black),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "Edit",
                style: TextStyle(fontFamily: "Roboto-Regular", fontSize: 15),
              ))
        ]),
      ),
      toolbarHeight: 80,
    );
  }
}
