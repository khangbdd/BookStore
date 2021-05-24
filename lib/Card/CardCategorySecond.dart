import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardCategorySecond extends StatelessWidget {

  CardCategorySecond({ this.name, this.image, this.backgroundColor}) : super();

  final String name;
  final String image;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 35,),
          Text(name,
          style: TextStyle(
            fontFamily: 'Roboto-Bold',
            fontSize: 12
          ),),
          SizedBox(height: 25,),
          Image.asset(image,
          height: 120,
          width: 80,)
        ],
      ),
    );
  }
}
