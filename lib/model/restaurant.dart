import 'dart:convert';

class Restaurant {
  late String id;
  late String name;
  late String description;
  late String city;
  late String pictureId;
  late String rating;
  late Menus menus;

  Restaurant ({
    required this.id,
    required this.name,
    required this.description,
    required this.city,
    required this.pictureId,
    required this.rating,
    required this.menus,
  });

  Restaurant.fromJson(Map<String, dynamic> restaurant) {
    id = restaurant['id'];
    name = restaurant['name'];
    description = restaurant['description'];
    city = restaurant['city'];
    pictureId = restaurant['pictureId'];
    rating = restaurant['rating'].toString();
    menus = (restaurant['menus'] != null ? new Menus.fromJson(restaurant['menus']) : null)!;
  }
}

class Menus {
  List<Foods> foods = [];
  List<Drinks> drinks = [];

  Menus({required this.foods, required this.drinks});

  Menus.fromJson(Map<String, dynamic> restaurant) {
    if (restaurant["foods"] != null) {
      restaurant['foods'].forEach((v) {
        foods.add(new Foods.fromJson(v));
      });
    }
    if (restaurant['drinks'] != null) {
      restaurant['drinks'].forEach((v) {
        drinks.add(new Drinks.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.foods != null) {
      data['foods'] = this.foods.map((v) => v.toJson()).toList();
    }
    if (this.drinks != null) {
      data['drinks'] = this.drinks.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Foods {
  String? name;

  Foods({required this.name});

  Foods.fromJson(Map<String, dynamic> restaurant) {
    name = restaurant['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}

class Drinks {
  String? name;

  Drinks({required this.name});

  Drinks.fromJson(Map<String, dynamic> restaurant) {
    name = restaurant['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}

List<Restaurant> parseRestaurants(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json)["restaurants"];
  return parsed.map((json) => Restaurant.fromJson(json)).toList();
}