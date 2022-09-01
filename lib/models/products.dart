import 'package:onecall/models/restaurant.dart';
import 'package:onecall/sample/sampledata.dart';

class Products {
   final String restaurantId;
   final String categoryId;
   final String productId;
   final String name;
   final String image;
   final String shortDescription;
   final String longDescription;
   final double price;
   final double? discount;
   final List<Variation>? variation;

  Products({
    required this.restaurantId,
    required this.categoryId,
    required this.productId,
    required this.name,
    required this.image,
    required this.shortDescription,
    required this.longDescription,
    required this.price,
    this.discount,
    this.variation,
  });


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
  
  final String name;
  final String imagePath;
  final dynamic value;
  final bool isSelected;
  
  DynamicOption({
    required this.name,
    required this.imagePath,
    required this.value,
    required this.isSelected,
  });


}





List<Products> joilebeeproductsample  = [

Products(restaurantId: '01', categoryId: '01', productId: '01', name: 'Fried Chicken 2 pc', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 100, discount: 10, variation: addonvariation),
Products(restaurantId: '02', categoryId: '02', productId: '02', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 100, discount: 10, variation:addonvariation ),
Products(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 100, discount: 10, variation:addonvariation ),
Products(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 100, discount: 10, variation:addonvariation ),
Products(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 100, discount: 10, variation:addonvariation ),
Products(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 100, discount: 10, variation:addonvariation ),
Products(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 100, discount: 10, variation:addonvariation ),
Products(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 100, discount: 10, variation:addonvariation ),
Products(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 100, discount: 10, variation:addonvariation ),
Products(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 100, discount: 10, variation:addonvariation ),
Products(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 100, discount: 10, variation:addonvariation ),
Products(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 100, discount: 10, variation:addonvariation ),
Products(restaurantId: '03', categoryId: '03', productId: '03', name: 'Black Pepper Burger Cheese', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 100, discount: 10, variation:addonvariation ),
  
];

List<Products> minuteproductsample  = [

Products(restaurantId: '01', categoryId: '01', productId: '01', name: 'a', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 100, discount: 10, variation: addonvariation),
Products(restaurantId: '02', categoryId: '02', productId: '02', name: 'b', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 100, discount: 10, variation:addonvariation ),
Products(restaurantId: '03', categoryId: '03', productId: '03', name: 'c', image: 'f1.jpg', shortDescription: 'Occaecat cupidatat enim ex id laborum reprehenderit ullamco ipsum sunt esse consectetur es', longDescription: 'se tempor aliquip. Magna proident laboris irure amet magna aute esse adipisicing nostrud veniam qui incididunt ad aliqua. Ad mollit eiusmod mollit consectetur sint ad ipsum voluptat', price: 100, discount: 10, variation:addonvariation ),
  
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