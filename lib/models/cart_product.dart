import 'package:onecall/models/product.dart';

class CartProduct {
  String? restaurantId;
    String? categoryId;
    String? productId;
    String? name;
    String? image;
    String? shortDescription;
    String? longDescription;
    double? price;
    double? discount;
    List<Variation>? variation;
    int? quantity;

  CartProduct({
    this.restaurantId,
    this.categoryId,
    this.productId,
    this.name,
    this.image,
    this.shortDescription,
    this.longDescription,
    this.price,
    this.discount,
    this.variation,
    this.quantity,
  });

  factory CartProduct.fromJson(Map<String, dynamic> json) => 
  CartProduct(
    restaurantId: json['restaurantId'], 
    categoryId: json['categoryId'], 
    productId: json['productId'], 
    name: json['name'], 
    image: json['image'], 
    shortDescription: json['shortDescription'], 
    longDescription: json['longDescription'], 
    price: json['price'],
    discount: json['discount'], 
    variation: json['variation'],
    quantity: json['quantity']

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
    'quantity': quantity
  };

}
