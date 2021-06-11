import 'package:book_store/Class/BookCardInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Components/ads_card.dart';
import 'Components/category_list.dart';
import 'Components/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<BookCardInfo> lstBookCard = List<BookCardInfo>();
    lstBookCard
        .add(BookCardInfo("Eleanor and Park", "By rainbow rowell", 10000, 4.5));
    lstBookCard.add(
        BookCardInfo("Eleanor and Park1", "By rainbow rowell1", 20000, 1.5));
    lstBookCard.add(
        BookCardInfo("Eleanor and Park2", "By rainbow rowell2", 30000, 2.5));
    lstBookCard.add(
        BookCardInfo("Eleanor and Park3", "By rainbow rowell3", 40000, 3.5));
    lstBookCard.add(
        BookCardInfo("Eleanor and Park4", "By rainbow rowell4", 50000, 4.5));
    lstBookCard.add(
        BookCardInfo("Eleanor and Park5", "By rainbow rowell5", 60000, 4.6));
    lstBookCard.add(
        BookCardInfo("Eleanor and Park6", "By rainbow rowell6", 70000, 4.7));
    lstBookCard.add(
        BookCardInfo("Eleanor and Park7", "By rainbow rowell7", 80000, 4.9));

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Container(
              color: Color(0xffF5F6F7),
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
                  child: CategoryList(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Featured",
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
                          height: 250,
                          child: GridView.builder(
                              padding: EdgeInsets.all(10),
                              physics: ScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 1,
                                      mainAxisSpacing: 15,
                                      childAspectRatio: 1.4,
                                      crossAxisSpacing: 15),
                              itemCount: lstBookCard.length,
                              itemBuilder: (context, index) =>
                                  _buildBookItem(lstBookCard[index])),
                        )
                      ],
                    ),
                  ),
                )
              ])),
        ),
      ),
    );
  }

  Widget _buildBookItem(BookCardInfo BookCardInfo) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 2,
              offset: Offset(1, 4), // changes position of shadow
            ),
          ],
        ),
        padding: EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/bookCover.png"),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  BookCardInfo.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto-Bold"),
                ),
              ),
              Text(
                "By ${BookCardInfo.author}",
                style: TextStyle(
                  color: Color(0xff151616),
                  fontSize: 11,
                  fontFamily: "Roboto-Regular",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "đ ${BookCardInfo.price}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: "Roboto-Regular"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "${BookCardInfo.rate}",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: "Roboto-Regular"),
                        ),
                        Image.asset(
                          "assets/images/ICON-StarFill.png",
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


