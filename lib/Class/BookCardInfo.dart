import 'package:flutter/cupertino.dart';

class BookCardInfo {
  const BookCardInfo(this.title,
      this.author,
      this.price,
      this.rate);

  final String title;
  final String author;
  final int price;
  final double rate;
}
