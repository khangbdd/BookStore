
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          Expanded(
            child: TextField(
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
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                suffix:InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(16 * 0.75),
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(10))),
                    child: SvgPicture.asset("assets/icons/Search.png"),
                  ),
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
