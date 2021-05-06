import 'package:book_store/constraint/colors.dart';
import 'package:book_store/constraint/icon.dart';
import 'package:book_store/screen/Login/Components/body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }
  AppBar buildAppBar()
  {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(icon: iconBackArrow, onPressed: () {}, color: lightGray),
    );
  }
}
