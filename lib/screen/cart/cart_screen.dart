import 'package:book_store/Class/BookCardInfo.dart';
import 'package:book_store/Class/CartBookInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Components/cart_card.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<CartBookInfo> lstBookCart = [
      CartBookInfo("Eleanor and Park", "By rainbow rowell", 10000, 4),
      CartBookInfo("Eleanor and Park1", "By rainbow rowell1", 20000, 15),
      CartBookInfo("Eleanor and Park2", "By rainbow rowell2", 30000, 25),
      CartBookInfo("Eleanor and Park3", "By rainbow rowell3", 40000, 35),
      CartBookInfo("Eleanor and Park4", "By rainbow rowell4", 50000, 45),
      CartBookInfo("Eleanor and Park5", "By rainbow rowell5", 60000, 46),
      CartBookInfo("Eleanor and Park6", "By rainbow rowell6", 70000, 47),
      CartBookInfo("Eleanor and Park7", "By rainbow rowell7", 80000, 49)];
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
            SingleChildScrollView(
              child: Container(
                height: 600,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: lstBookCart.length,
                    physics: ScrollPhysics(),
                    separatorBuilder: (BuildContext context, index) {return SizedBox(height: 10,);},
                    itemBuilder: (BuildContext context, index) {
                      return Dismissible(
                        direction: DismissDirection.startToEnd,
                        background: Container(decoration: BoxDecoration(color: Colors.redAccent,borderRadius: const BorderRadius.all(Radius.circular(10)))),
                          key: UniqueKey(),
                          child: CartCard(cartBook: lstBookCart[index],),
                      onDismissed: (direction) {
                          setState(() {
                            lstBookCart.removeAt(index);
                          });
                      },);
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: SizedBox(
                width: 400,
                height: 45,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff28A745),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)))),
                    child: Text(
                      "CHECKOUT",
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
        "Cart",
        style: TextStyle(
            fontSize: 20, fontFamily: "Roboto-Bold", color: Colors.black),
      ),
      toolbarHeight: 80,
    );
  }
}
