import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10),
                physics: ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) => GridTile(
                    child: Container(
                      child: Stack(
                        children: [
                          Image.asset("assets/images/categrory.png",
                            fit: BoxFit.cover,),
                          Text(
                            "Biog",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Roboto-Bold",
                                fontSize: 14),
                          )
                        ],
                      ),
                    )))),
      ]),
    );
  }
}