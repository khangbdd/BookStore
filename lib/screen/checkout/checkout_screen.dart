import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Components/checkout_card.dart';
import 'Components/verify_form.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6F7),
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "Yours items",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: "Roboto-Medium",
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(

                height: 530,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 5),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 8,
                    physics: ScrollPhysics(),
                    itemBuilder: (BuildContext context, index) => CheckoutCard()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: 400,
                height: 45,
                child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet<void>(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
                        ),
                        context: context,
                        builder: (BuildContext context) {
                          return VerifyForm();
                        }
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff28A745),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)))),
                    child: Text(
                      "BUY",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Roboto-Bold",
                          color: Colors.white),
                    )),
              ),
            )
          ],
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
      title: Text(
        "Checkout",
        style: TextStyle(
            fontSize: 20, fontFamily: "Roboto-Bold", color: Colors.black),
      ),
      toolbarHeight: 80,
    );
  }
}

