import 'package:flutter/material.dart';

class CartBookInfo {
  const CartBookInfo(@required this.title,
      @required this.author,
      @required this.price,
      @required this.quantity);

  final String title;
  final String author;
  final int price;
  final int quantity;
}
