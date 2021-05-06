import 'package:book_store/constraint/colors.dart';
import 'package:book_store/constraint/dimen.dart';
import 'package:book_store/screen/Login/Components/login_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            Text(
              'Login',
              style: TextStyle(
                  fontSize: textMedium,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            Image.asset('assets/images/img_login.png'),
            SizedBox(height: 20),
            LoginForm(),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Don\'t have account?',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  ' Sign up',
                  style: TextStyle(
                      fontSize: 14,
                      color: lightBlue,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.normal),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
