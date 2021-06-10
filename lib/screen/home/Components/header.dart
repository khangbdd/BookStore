import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        SearchBar(),
        ElevatedButton(onPressed: () {},
          child: SvgPicture.asset("assets/images/cart.svg"),
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: CircleBorder(),
            side: BorderSide.none,
            primary: Color(0xffFAFAFA),
          ),)
      ],
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
        elevation: 1,
        borderRadius: const BorderRadius.all(Radius.circular(30)) ,
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
              prefix:InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(18))),
                  child: SvgPicture.asset("assets/images/search.svg"),
                ),
              )
          ),
        ),
      ),
    );
  }
}
