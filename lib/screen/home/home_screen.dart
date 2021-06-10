import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Components/ads_card.dart';
import 'Components/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Container(
              child: Column(children: [
            Header(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: AdsCard(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: "Roboto-Bold",
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "See all",
                            style: TextStyle(
                                color: Color(0xff656565),
                                fontFamily: "Roboto-Regular",
                                fontSize: 14),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                    Container(
                      height: 80,
                      child: GridView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                        mainAxisSpacing: 8,
                        childAspectRatio: 1.754),
                        itemCount: 6,
                        physics: ScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, index) {
                          return GridTile(
                                child: Container(
                                  child: Stack(
                                    children: [
                                      Image.asset("assets/images/categrory.png"),
                                      Text(
                                        "Biog",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Roboto-Bold",
                                            fontSize: 14),
                                      )
                                    ],
                                  ),
                                ));
                        },
                  ),
                    )
                ]),
              ),
            )
          ])),
        ),
      ),
    );
  }
}
