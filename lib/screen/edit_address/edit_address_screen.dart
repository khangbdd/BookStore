import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Components/FillInfo.dart';

class EditAddressScreen extends StatelessWidget {
  const EditAddressScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              FillInfo()
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Color(0xff858C94),
        onPressed: () {},
      ),
      centerTitle: true,
      title: Text(
        "Edit Address",
        style: TextStyle(
            fontSize: 20, fontFamily: "Roboto-Bold", color: Colors.black),
      ),
      toolbarHeight: 100,
    );
  }
}
