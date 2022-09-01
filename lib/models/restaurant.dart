import 'package:onecall/models/products.dart';

class Restaurant {
  final String restaurantId;
  final String name;
  final String image;
  final String circleimage;
  final String kilometerDistance;
  final String address;
  final String longDescription;
  final String openAt;
  final String closeAt;
  final String from;
  final String until;
  final List<CategoriesWithProduct> categories; 

  Restaurant({
    required this.restaurantId,
    required this.name,
    required this.image,
    required this.circleimage,
    required this.kilometerDistance,
    required this.address,
    required this.longDescription,
    required this.openAt,
    required this.closeAt,
    required this.from,
    required this.until,
    required this.categories,
  });


}

class CategoriesWithProduct {
  final String name;
  final String categoryId;
  final List<Products> products; 

  CategoriesWithProduct({
    required this.name,
    required this.categoryId,
    required this.products,
  });





}

List<Restaurant> samplerestaurant = [
  Restaurant(restaurantId: '01', name: 'Jolibee Isulan' , image: 'jolibee.png', circleimage: 'playstore.png', kilometerDistance: '0.5', address: 'Labore incididunt mollit dolore elit excepteur', longDescription: 'Labore incididunt mollit dolore elit excepteurLabore incididunt mollit dolore elit excepteur', openAt: '10:00 AM', closeAt: '10:00 PM', from: 'M', until: 'F', categories: jolibeecategory),
  Restaurant(restaurantId: '02', name: 'Minuter Burgder' , image: 'f2.jpg', circleimage: 'playstore.png', kilometerDistance: '0.5', address: 'Labore incididunt mollit dolore elit excepteur', longDescription: 'Labore incididunt mollit dolore elit excepteurLabore incididunt mollit dolore elit excepteur', openAt: '8:00 AM', closeAt: '10:00 PM', from: 'M', until: 'F', categories: minutecategory),
  Restaurant(restaurantId: '03', name: 'Monday' , image: 'f3.jpg', circleimage: 'playstore.png', kilometerDistance: '0.5', address: 'Labore incididunt mollit dolore elit excepteur', longDescription: 'Labore incididunt mollit dolore elit excepteurLabore incididunt mollit dolore elit excepteur', openAt: '7:00 AM', closeAt: '10:00 PM', from: 'M', until: 'F', categories: mondaycategory),
];



List<CategoriesWithProduct> jolibeecategory = [
  CategoriesWithProduct(name: 'Chicken', products: joilebeeproductsample, categoryId: '01' ),
  CategoriesWithProduct(name: 'Drinks', products: minuteproductsample, categoryId: '01' ),
  CategoriesWithProduct(name: 'Burger', products: minuteproductsample, categoryId: '01' ),
];

List<CategoriesWithProduct> minutecategory = [
  CategoriesWithProduct(name: 'Chicken', products: joilebeeproductsample, categoryId: '01' ),
  CategoriesWithProduct(name: 'Drinks', products: joilebeeproductsample, categoryId: '02' ),
  CategoriesWithProduct(name: 'Burger', products: joilebeeproductsample, categoryId: '03' ),
  CategoriesWithProduct(name: 'Pizza', products: joilebeeproductsample, categoryId: '03' ),
];

List<CategoriesWithProduct> mondaycategory = [
  CategoriesWithProduct(name: 'Chicken', products: joilebeeproductsample, categoryId: '01' ),
  CategoriesWithProduct(name: 'Drinks', products: joilebeeproductsample, categoryId: '02' ),
  CategoriesWithProduct(name: 'Burger', products: joilebeeproductsample, categoryId: '03' ),
];

