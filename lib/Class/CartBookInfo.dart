import 'package:flutter/material.dart';

class CartBookInfo {
  const CartBookInfo(this.title,
      this.author,
      this.price,
      this.quantity);

  final String title;
  final String author;
  final int price;
  final int quantity;
}
