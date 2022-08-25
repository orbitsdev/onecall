import 'package:flutter/foundation.dart';

class Product {

String name;

String imagepaht;
  Product({
    required this.name,
    required this.imagepaht,
  });
  

factory Product.fromJson(Map<String,dynamic> json )=> Product(name: json['name'], imagepaht: json['imagepaht']);
}


