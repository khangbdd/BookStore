import 'package:book_store/screen/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SplashScreen(

      seconds: 3,
      navigateAfterSeconds: new WelcomeScreen(),
      title: new Text(
        'ONLINE BOOK STORE',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0, color: Colors.white),

      ),

      image: new Image.asset(
          'assets/images/ic_splash.png',
        alignment: Alignment.center,
              ),

      gradientBackground: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.lightBlue,
          Colors.blue,

        ],
      ),
      photoSize: 150,
      loadingText: new Text(
        'Loading...',
        style: new TextStyle(fontWeight: FontWeight.normal, fontSize: 15.0, color: Colors.white),
      ),
      loaderColor: Colors.white,
      useLoader: true,

    );

  }



}
