
import 'package:book_store/screen/Login/login_screen.dart';
import 'package:book_store/screen/address_screen/address_screen.dart';
import 'package:book_store/screen/cart/cart_screen.dart';
import 'package:book_store/screen/category_screen/category_screen.dart';
import 'package:book_store/screen/checkout/checkout_screen.dart';
import 'package:book_store/screen/create_address/create_address_screen.dart';
import 'package:book_store/screen/edit_address/edit_address_screen.dart';
import 'package:book_store/screen/edit_profile/edit_profile_screen.dart';
import 'package:book_store/screen/home/home_screen.dart';
import 'package:book_store/screen/proflie/profile_screen.dart';
import 'package:book_store/screen/search_category/search_category_screen.dart';
import 'package:book_store/screen/splash/Splash_Activity.dart';
import 'package:book_store/screen/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'screen/register/Register_Activity.dart';
import 'screen/welcome/components/body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashActivity(),
    );
  }
}



