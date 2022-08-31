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
  final List<String> categories;
  final List<Products> products;

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
    required this.products,
    required this.categories,
    
  });

 

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        restaurantId: json['restaurantId'],
        name: json['name'],
        image: json['image'],
        circleimage: json['circleimage'],
        kilometerDistance: json['kilometerDistance'],
        address: json['address'],
        longDescription: json['longDescription'],
        openAt: json['openAt'],
        closeAt: json['closeAt'],
        from: json['from'],
        until: json['until'],
        products: json['products'],
        categories: json['categories']
      );

  Map<String, dynamic> toJson() => {
        'restaurantId': restaurantId,
        'name': name,
        'image': image,
        'kilometerDistance': kilometerDistance,
        'address': address,
        'longDescription': longDescription,
        'openAt': openAt,
        'closeAt': closeAt,
        'products': products,
      };
}
