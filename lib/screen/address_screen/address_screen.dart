import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key key}) : super(key: key);

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
                        return Center(
                          child: Container(
                            padding:
                                EdgeInsets.only(left: 15, top: 15, bottom: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(18)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 1,
                                  offset:
                                      Offset(0, 0), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Bùi Dương Duy Khang",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontFamily: "Roboto-Regular"),
                                    ),
                                    Text(
                                      "0933171801",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontFamily: "Roboto-Regular"),
                                    ),
                                    Text(
                                      "KTX khu B, Phường đông hòa",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontFamily: "Roboto-Regular"),
                                    ),
                                    Text(
                                      "thị xã dĩ an",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontFamily: "Roboto-Regular"),
                                    ),
                                    Text(
                                      "Bình Dương",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontFamily: "Roboto-Regular"),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 50, left: 110),
                                  child: Checkbox(
                                    value: true,
                                    onChanged: (bool) {},
                                    shape: CircleBorder(),
                                    checkColor: Color(0xff0F52BA),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, index) {
                        return SizedBox(
                          height: 10,
                        );
                      },
                      itemCount: 4),
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
