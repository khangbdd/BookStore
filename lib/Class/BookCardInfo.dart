import 'package:flutter/cupertino.dart';

class BookCardInfo {
  const BookCardInfo(@required this.title,
      @required this.author,
      @required this.price,
      @required this.rate);

  final String title;
  final String author;
  final int price;
  final double rate;
}
