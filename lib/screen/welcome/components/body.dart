import 'package:book_store/constraint/colors.dart';
import 'package:book_store/constraint/dimen.dart';
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
                  fontSize: testMedium,
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
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(lightBlue),
                    elevation: MaterialStateProperty.all(8),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ))),
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Roboto-Regular'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
