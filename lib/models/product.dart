import 'package:onecall/models/dynamic_option.dart';
import 'package:onecall/models/variation.dart';

class Product {
   final String restaurantId;
   final String categoryId;
   final String productId;
   final String name;
   final String image;
   final String shortDescription;
   final String longDescription;
   final double price;
   final double discount;
   final List<Variation> variation;

  Product({
    required this.restaurantId,
    required this.categoryId,
    required this.productId,
    required this.name,
    required this.image,
    required this.shortDescription,
    required this.longDescription,
    required this.price,
    required this.discount,
    required this.variation

  });


  factory Product.fromJson(Map<String, dynamic> json) => 
  Product(
    restaurantId: json['restaurantId'], 
    categoryId: json['categoryId'], 
    productId: json['productId'], 
    name: json['name'], 
    image: json['image'], 
    shortDescription: json['shortDescription'], 
    longDescription: json['longDescription'], 
    price: json['price'],
    discount: json['discount'], 
    variation: json['variation']

    );

  toJson() =>{
     'restaurantId':restaurantId ,
    'categoryId':categoryId ,
    'productId':productId ,
    'name':name ,
    'image':image ,
    'shortDescription':shortDescription ,
    'longDescription':longDescription ,
    'price':price ,
    'discount':discount ,
    'variation':variation ,
  };


}











// enum SelectionType {
//   singleSelection,
//   multipleSelection
// }