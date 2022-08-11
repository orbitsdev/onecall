import 'package:flutter/foundation.dart';

class Board {
  String image;
  String title;
  String subtitle;
  int id;

  Board({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.id,
  });

  factory Board.fromJson(Map<String, dynamic> json) => Board(
        image: json['image'],
        title: json['title'],
        subtitle: json['subtitle'],
        id: json['id'],
      );

  toJson() => {
        'image': image,
        'title': title,
        'subtitle': subtitle,
        'id': id,
      };

}
