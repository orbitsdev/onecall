import 'package:flutter/material.dart';
import 'package:onecall/models/board.dart';
import 'package:onecall/models/product.dart';
import 'package:onecall/onboard/boarding_content.dart';

class Sampledata {
  List<Product> getproduct(List<Product> products) {
    List<Product> newcollection = <Product>[];

    if (products.length <= 4) {
      return products;
    }

    if (products.length > 4) {
      products.asMap().entries.map((e) {
        if (e.key <= 3) {
          newcollection.add(products[e.key]);
        }
      });
    }
    return newcollection;
  }
}

List<Board> onboardingPage = [
  Board(
      image: '90016-order-food.json',
      title: 'Order food',
      subtitle: 'Order your favorite food from the menu ',
      id: 0),
  Board(
      image: '112147-pay-now.json',
      title: 'Easy payment',
      subtitle: 'Pay online via paypal, gcash or cash',
      id: 1),
  Board(
      image: '8980-order-status-for-food-delivery.json',
      title: 'Fast delivery',
      subtitle: 'Chill and wait  your order ',
      id: 2),
];

List<Product> sampleproduct = [
  Product(name: 'Burger Cheese ', imagepaht: 'f1.jpg'),
  Product(name: 'Pizza Hot Bacon', imagepaht: 'f2.jpg'),
  Product(name: 'Product One', imagepaht: 'f3.jpg'),
  Product(name: 'Porduct Name', imagepaht: 'f5.jpg'),
  Product(name: 'Chicker Fired wd', imagepaht: 'f6.jpg'),
  Product(name: 'Sahofan', imagepaht: 'f7.jpg'),
];

List<String> restocategory = [
  "Chicken",
  "Drinks",
  "Beff",
  "Snacks",
  "Snacks",
  "Snacks",
];
