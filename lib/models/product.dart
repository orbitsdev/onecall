import 'package:onecall/models/restaurant.dart';
import 'package:onecall/sample/sampledata.dart';

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


class Variation {
  String name;
  String selectionType;
  List<DynamicOption> dynamicOption;
  Variation({
    required this.name,
    required this.selectionType,
    required this.dynamicOption,
  });
 
}

class DynamicOption {
  
   String name;
   String imagePath;
   dynamic value;
   bool isSelected;
  DynamicOption({
    required this.name,
    required this.imagePath,
    required this.value,
    required this.isSelected,
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
  Variation(name: 'Add on', selectionType: 'multiple', dynamicOption: addsoncollection),
  Variation(name: 'Drink Size', selectionType: 'single', dynamicOption: sizecollection)
]; 


List<DynamicOption> addsoncollection = [
 DynamicOption(name: 'egg', imagePath: 'f2.jpg', value: 'egg', isSelected: true),
 DynamicOption(name: 'bacon', imagePath: 'f1.jpg', value: 'egg', isSelected: false),
 DynamicOption(name: 'cheese', imagePath: 'f3.jpg', value: 'egg', isSelected: true),
]; 

List<DynamicOption> sizecollection = [
 DynamicOption(name: 's', imagePath: 'f2.jpg', value: 's',  isSelected:  false),
 DynamicOption(name: 'm', imagePath: 'f1.jpg', value: 'm',  isSelected:  false),
 DynamicOption(name: 'l', imagePath: 'f3.jpg', value: 'l',  isSelected:  true),
 DynamicOption(name: 'xl', imagePath: 'f3.jpg', value: 'xl',  isSelected:  true),
]; 




// enum SelectionType {
//   singleSelection,
//   multipleSelection
// }