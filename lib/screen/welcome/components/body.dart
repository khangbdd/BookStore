import 'package:book_store/constraint/colors.dart';
import 'package:book_store/constraint/dimen.dart';
import 'package:book_store/screen/welcome/components/button_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      constraints: BoxConstraints.expand(),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 175),
            Text(
              'Welcome to Smart Book Store',
              style: TextStyle(
                  fontSize: textMedium,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold),
            ),
            Text('Explore us',
                style: TextStyle(
                    fontSize: textWelcomeSmall,
                    color: lightGray,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal)),
            SizedBox(height: 100),
            SvgPicture.asset('assets/images/img_wellcome.svg'),
            SizedBox(height: 60),
            LoginButton()
          ],
        ),
      ),
    );
  }
}
