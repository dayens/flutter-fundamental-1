import 'dart:convert';

class Restaurant {
  late String id;
  late String name;
  late String description;
  late String city;
  late String pictureId;
  late String rating;
  late String menus;

  Restaurant (this.menus,{
    required this.id,
    required this.name,
    required this.description,
    required this.city,
    required this.pictureId,
    required this.rating,
    //required this.menus,
  });

  Restaurant.fromJson(Map<String, dynamic> restaurant) {
    id = restaurant['id'];
    name = restaurant['name'];
    description = restaurant['description'];
    city = restaurant['city'];
    pictureId = restaurant['pictureId'];
    rating = restaurant['rating'];
    menus = restaurant['menus'];
  }
}