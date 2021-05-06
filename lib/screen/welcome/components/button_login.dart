import 'package:book_store/constraint/colors.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton(
        onPressed:() {},
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
    );
  }
}
