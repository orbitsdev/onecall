import 'package:onecall/models/restaurant.dart';
import 'package:onecall/sample/sampledata.dart';

class Products {
   final String restaurantId;
   final String category;
   final String productId;
   final String name;
   final String image;
   final String shortDescription;
   final String longDescription;
   final double price;
   final double? discount;
   final List<Variation>? variation;

  Products({
    required this.productId,
    required this.restaurantId,
    required this.category,
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



  factory DynamicOption.fromJson(Map<String, dynamic> json) => DynamicOption(
        name: json['name'],
        imagePath: json['imagePath'],
        value: json['value'],
        isSelected: json['isSelected']
      );
}



List<Restaurant> samplerestaurant = [
  Restaurant(restaurantId: '0', name: 'Jolibee Isulan ', image: 'jolibee.png', circleimage: 'playstore.png', kilometerDistance: '0.5', address: 'Labore incididunt mollit dolore elit excepteur', longDescription: ' Et reprehenderit mollit aute id incididunt amet proident minim ullamco eiusmod minim nostrud eiusmod. Pariatur consectetur ea irure qui adip', openAt: '10:00 AM', closeAt: '11:00 PM', products: joilebeeproductsample , from: 'M', until: 'F' , categories: restocategory),
  Restaurant(restaurantId: '1', name: 'Monday Isulan ', image: 'f1.jpg', circleimage: 'playstore.png', kilometerDistance: '0.5', address: 'Labore incididunt mollit dolore elit excepteur', longDescription: ' Et reprehenderit mollit aute id incididunt amet proident minim ullamco eiusmod minim nostrud eiusmod. Pariatur consectetur ea irure qui adip', openAt: '6:00 AM', closeAt: '5:00 PM', products: joilebeeproductsample , from: 'M', until: 'F' , categories:restocategory ),
  Restaurant(restaurantId: '2', name: 'Carlitos Isulan ', image: 'f1.jpg', circleimage: 'playstore.png', kilometerDistance: '0.5', address: 'Labore incididunt mollit dolore elit excepteur', longDescription: ' Et reprehenderit mollit aute id incididunt amet proident minim ullamco eiusmod minim nostrud eiusmod. Pariatur consectetur ea irure qui adip', openAt: '7:30 AM', closeAt: '8:00 PM', products: joilebeeproductsample , from: 'M', until: 'F' , categories:restocategory ),
];



List<Products> joilebeeproductsample  = [
  Products(productId: '0', restaurantId: '0', name: 'Fried Chicken ', image: 'jolibee.png', shortDescription: 'Labore incididunt mollit dolore elit excepteur.', longDescription: ' Et reprehenderit mollit aute id incididunt amet proident minim ullamco eiusmod minim nostrud eiusmod. Pariatur consectetur ea irure qui adipisicing ullamco cupidatat reprehenderit irure voluptate dolore magna.', price: 50, category: 'Chicken'),
  Products(productId: '1', restaurantId: '1', name: 'Hot Spicky Chicke ', image: 'f1.jpg', shortDescription: 'Labore incididunt mollit dolore elit excepteur.', longDescription: ' Et reprehenderit mollit aute id incididunt amet proident minim ullamco eiusmod minim nostrud eiusmod. Pariatur consectetur ea irure qui adipisicing ullamco cupidatat reprehenderit irure voluptate dolore magna.', price: 50, category: 'Chicken'),
  Products(productId: '2', restaurantId: '2', name: 'Long Chicken', image: 'f7.jpg', shortDescription: 'Labore incididunt mollit dolore elit excepteur.', longDescription: ' Et reprehenderit mollit aute id incididunt amet proident minim ullamco eiusmod minim nostrud eiusmod. Pariatur consectetur ea irure qui adipisicing ullamco cupidatat reprehenderit irure voluptate dolore magna.', price: 50, category: 'Drinks'),
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