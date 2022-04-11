// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_fundamental_1/model/restaurant.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/detail_screen';

  final Restaurant restaurant;

  const DetailScreen({required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Image.network(
                restaurant.pictureId,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16, left: 8, right: 8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  restaurant.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 16, left: 8, right: 8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2)),
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text(restaurant.city)),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 16, left: 8, right: 8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2)),
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.star_rate,
                          size: 16,
                          color: Colors.orange,
                        ),
                        Text(restaurant.rating)
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, left: 8, right: 8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              padding: const EdgeInsets.all(8.0),
              child: Text(restaurant.description),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2)),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.restaurant,
                              size: 20,
                              color: Colors.blue,
                            ),
                            Text(
                              ' Daftar Makanan',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: restaurant.menus.foods
                              .map((e) => Text('- ' + e.name))
                              .toList(),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2)),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.emoji_food_beverage_rounded,
                            size: 20,
                            color: Colors.blue,
                          ),
                          Text(
                            ' Daftar Minuman',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: restaurant.menus.drinks
                            .map((e) => Text('- ' + e.name))
                            .toList(),
                      )
                    ]),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
