import 'package:flutter/material.dart';

import 'package:onecall/models/board.dart';
import 'package:onecall/models/dynamic_option.dart';
import 'package:onecall/models/product.dart';
import 'package:onecall/models/variation.dart';
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




List<Product> joilebeeproductsample  = [

Product(restaurantId: '01', categoryId: '01', productId: '01', name: 'Fried Chicken 2 pc', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 3, discount: 10, variation: addonvariation),
Product(restaurantId: '02', categoryId: '02', productId: '02', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 20, discount: 10, variation:addonvariation ),
Product(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 30, discount: 10, variation:addonvariation ),
Product(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 40, discount: 10, variation:addonvariation ),
Product(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 60, discount: 10, variation:addonvariation ),
Product(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 60, discount: 10, variation:addonvariation ),
Product(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 70, discount: 10, variation:addonvariation ),
Product(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 80, discount: 10, variation:addonvariation ),
Product(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 90, discount: 10, variation:addonvariation ),
Product(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 100, discount: 10, variation:addonvariation ),
Product(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 110, discount: 10, variation:addonvariation ),
Product(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 12, discount: 10, variation:addonvariation ),
Product(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 4, discount: 10, variation:addonvariation ),
  
];

List<Product> minuteproductsample  = [

Product(restaurantId: '01', categoryId: '01', productId: '01', name: 'a', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 100, discount: 10, variation: addonvariation),
Product(restaurantId: '02', categoryId: '02', productId: '02', name: 'b', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 100, discount: 10, variation:addonvariation ),
Product(restaurantId: '03', categoryId: '03', productId: '03', name: 'c', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 100, discount: 10, variation:addonvariation ),
  
];


List<Variation> addonvariation = [
  Variation( required: false, variationId: '01', name: 'Add on', selectionType: 'multiple', dynamicOption: addsoncollection),
  Variation(required: true, variationId: '02', name: 'Drink Size', selectionType: 'single', dynamicOption: sizecollection)
]; 


List<DynamicOption> addsoncollection = [
 DynamicOption(name: 'egg', imagePath: 'f2.jpg', value: 5, isSelected: false),
 DynamicOption(name: 'bacon', imagePath: 'f1.jpg', value: 7, isSelected: false),
 DynamicOption(name: 'cheese', imagePath: 'f3.jpg', value: 3, isSelected: false),
]; 

List<DynamicOption> sizecollection = [
 DynamicOption(name: 's', imagePath: 'f2.jpg', value: 25,  isSelected:  false),
 DynamicOption(name: 'm', imagePath: 'f1.jpg', value: 35,  isSelected:  false),
 DynamicOption(name: 'l', imagePath: 'f3.jpg', value: 40,  isSelected:  false),
 DynamicOption(name: 'xl', imagePath: 'f3.jpg', value: 50,  isSelected:  false),
]; 







