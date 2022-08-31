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
  // Product(name: 'Burger Cheese ', imagepaht: 'f1.jpg'),
  // Product(name: 'Pizza Hot Bacon', imagepaht: 'f2.jpg'),
  // Product(name: 'Product One', imagepaht: 'f3.jpg'),
  // Product(name: 'Porduct Name', imagepaht: 'f5.jpg'),
  // Product(name: 'Chicker Fired wd', imagepaht: 'f6.jpg'),
  // Product(name: 'Sahofan', imagepaht: 'f7.jpg'),
];

List<String> restocategory = [
  "Drinks",
  "A",
  "Chicken",
  "Snacks",
  "BB",
  "Snacks",
];

List<String> extract = [
  "Egg", "Bacon", "Cheese"
]; 

List<String> drinksize = [
  "S", "M", "XL"
]; 



List<Extra> sample_extra_list = [
  Extra(title: 'Adds on', collection: extract),
  Extra(title: 'Size', collection: drinksize),
];

class Extra {

final String title;
List<String> collection;

  Extra({
    required this.title,
    required this.collection,
  });





}



List<DynamicExtra> sampleDynamicExtra = [
  
  DynamicExtra(title: 'Drink Size', type: 'single', withImage: true ,optionscollection: sizesample),
  DynamicExtra(title: 'Adds on', type: 'multiple', withImage: true, optionscollection: addsonsample),
  DynamicExtra(title: 'Variations ', type: 'multiple', withImage: false, optionscollection: samplehotdog),

];


List<DynamicOption> addsonsample = [
  DynamicOption('Egg', 'egg', false),
  DynamicOption('Bacon', 'bacon', true),
  DynamicOption('Cheese', 'Cheese', false),
];


List<DynamicOption> sizesample = [
  DynamicOption('Egg', 'egg', false),
  DynamicOption('Bacon', 'bacon', true),
  DynamicOption('Cheese', 'Cheese', false),
];

List<DynamicOption> samplehotdog = [
  DynamicOption('hot', 'hot', false),
  DynamicOption('chili', 'bacon', true),
  DynamicOption('mions', 'Cheese', false),
];



class DynamicExtra {


  final String title;
  final String type;
  final bool withImage;
  List<DynamicOption> optionscollection;

  DynamicExtra({
    required this.title,
    required this.type,
    required this.withImage,
    required this.optionscollection,
  });

}

class DynamicOption {
  final String title;
  final String value;
  final bool isSelected;

  DynamicOption(this.title, this.value, this.isSelected);

}
