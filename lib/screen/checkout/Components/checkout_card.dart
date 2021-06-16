import 'package:flutter/material.dart';

class CheckoutCard extends StatefulWidget {
  const CheckoutCard({
    Key key,
  }) : super(key: key);

  @override
  _CheckoutCardState createState() => _CheckoutCardState();
}

class _CheckoutCardState extends State<CheckoutCard> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Center(

      child: InkWell(
        splashColor: Color(0xff00A2FF).withOpacity(0.2),
        onTap: () {
          setState(() {
            isCheck = !isCheck;
          });
        },
        child: Ink(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 1,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
              color: Color(0xffffffff),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Row(

            children: [
              Image.asset("assets/images/BookCoverTrump.png"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 5),
                    child:
                      Text(
                        "The case for Trump",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "Roboto-Regular"),
                      ),
                  ),
                  Text(
                    "Lotto.LTD",
                    style: TextStyle(
                        color: Color(0xff919191),
                        fontSize: 12,
                        fontFamily: "Roboto-Regular"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Text(
                          "Quantity: ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: "Roboto-Regular"),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              minimumSize: Size(15, 20),
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Color(0xffE0E0E0), width: 1),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)))),
                          child: Container(
                            child: Text(
                              "-",
                              style: TextStyle(
                                  color: Color(0xff858C94),
                                  fontSize: 25,
                                  fontFamily: "Roboto-Regular"),
                            ),
                          ),
                        ),
                        Text(
                          "15",
                          style: TextStyle(
                              fontSize: 13, fontFamily: "Roboto-Regular"),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff0F52BA),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              minimumSize: Size(15, 20),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Color(0xff0E4CAD), width: 1),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)))),
                          child: Container(
                            child: Text(
                              "+",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: "Roboto-Regular"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ],
              ),
              Column(
                children:[
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Checkbox(
                      key: Key("cbIsCheckFofBuy"),
                      value: isCheck,
                      onChanged: (bool value) {
                        setState(() {
                          isCheck = value;
                        });
                      },
                      shape: CircleBorder( side: BorderSide(color: Color(0xff0F52BA))),
                      splashRadius: 10,
                    ),
                  ),
                  Padding(
                  padding: const EdgeInsets.only(left: 10, top: 32),
                  child: Text(
                    "đ200000",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff0F52BA),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Roboto-Bold"),
                  ),
                ),
                ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}
