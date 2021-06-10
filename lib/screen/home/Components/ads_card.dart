import 'package:flutter/material.dart';

class AdsCard extends StatelessWidget {
  const AdsCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffE2E2E2),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(18),
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(18))),
      height: 183,
      width: 360,
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: 113),
          child: Container(
            height: 164,
            width: 246,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/ads.png"),
                  fit: BoxFit.fitWidth,
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 10),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "StartReadingToday",
                  style: TextStyle(
                    color: Color(0xff0F52BA),
                    fontSize: 10,
                    fontFamily: "Roboto-Medium",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "20% off All products",
                  style: TextStyle(
                    color: Color(0xff434343),
                    fontSize: 16,
                    fontFamily: "Roboto-Bold",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff0F52BA),
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10)))),
                    child: Text(
                      "SHOP NOW",
                      style: TextStyle(
                          fontFamily: "Roboto-Bold",
                          fontSize: 10,
                          color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      ]),
    );
  }
}