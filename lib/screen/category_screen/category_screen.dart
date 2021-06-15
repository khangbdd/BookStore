
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: SizedBox(
                    height: 40,
                    width: 200,
                    child: Row(
                        children:[ SearchBar(),]
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    mainAxisSpacing: 15,
                        crossAxisSpacing: 20
                  ),
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 6,
                  itemBuilder: (BuildContext context, index) {
                    return GridTile(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffA59286),
                          borderRadius: const BorderRadius.all(Radius.circular(10))
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Arts", style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                              fontFamily: "Roboto-Bold"
                            ),),
                            Image.asset("assets/images/Category-1.png")
                          ],
                        ),
                      ),
                    );
                  }),
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
      title: Text(
        "Category",
        style: TextStyle(
            fontSize: 20, fontFamily: "Roboto-Bold", color: Colors.black),
      ),
      toolbarHeight: 80,
    );
  }
}
class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        elevation: 5,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        child: TextField(
          style: TextStyle(
            fontFamily: "Roboto-Regular",
            fontSize: 14,
          ),
          decoration: InputDecoration(
              hintText: "Search Books",
              fillColor: Colors.white,
              filled: true,
              hintStyle: TextStyle(
                fontFamily: "Roboto-Bold",
                fontSize: 14,
                fontWeight: FontWeight.w800,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
              prefix: InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.only(right: 10, top: 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                          Radius.circular(18))),
                  child: SvgPicture.asset("assets/images/search.svg"),
                ),
              )
          ),
        ),
      ),
    );
  }
}