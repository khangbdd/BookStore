import 'dart:ui';

import 'package:book_store/Class/BookCardInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchCategoryScreen extends StatelessWidget {
  const SearchCategoryScreen({Key key, @required this.title}) : super(key: key);

  final String title;
  
  @override
  Widget build(BuildContext context) {
    List<BookCardInfo> lstBookCard = List<BookCardInfo>();
    lstBookCard.add(BookCardInfo("Eleanor and Park", "By rainbow rowell", 10000, 4.5));
    lstBookCard.add(BookCardInfo("Eleanor and Park1", "By rainbow rowell1", 20000, 1.5));
    lstBookCard.add(BookCardInfo("Eleanor and Park2", "By rainbow rowell2", 30000, 2.5));
    lstBookCard.add(BookCardInfo("Eleanor and Park3", "By rainbow rowell3", 40000, 3.5));
    lstBookCard.add(BookCardInfo("Eleanor and Park4", "By rainbow rowell4", 50000, 4.5));
    lstBookCard.add(BookCardInfo("Eleanor and Park5", "By rainbow rowell5", 60000, 4.6));
    lstBookCard.add(BookCardInfo("Eleanor and Park6", "By rainbow rowell6", 70000, 4.7));
    lstBookCard.add(BookCardInfo("Eleanor and Park7", "By rainbow rowell7", 80000, 4.9));
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: _buildAppBar(title),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10),
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.756,
                    crossAxisSpacing: 15),
                itemCount: lstBookCard.length,
                itemBuilder: (context, index) => _buildBookItem(lstBookCard[index])
              )
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(String title) {
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
        "Comics & Graphic Novel", // replace title here
        style: TextStyle(
            fontSize: 20, fontFamily: "Roboto-Bold", color: Colors.black),
      ),
      toolbarHeight: 80,
    );
  }

  Widget _buildBookItem(BookCardInfo BookCardInfo)
  {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Colors.white,
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
