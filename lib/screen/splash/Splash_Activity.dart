import 'package:flutter/material.dart';

class SplashActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff458ED6), Color(0xff00D2FF)])),
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/ic_splash.png'),
              Text(
                'Book Market',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Roboto-Regular', fontSize: 45),
              )
            ],
          ))),
    );
  }
}
