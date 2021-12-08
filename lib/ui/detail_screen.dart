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
        title: Text('Detail Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 32, left: 8, right: 8),
              child: Image.network(restaurant.pictureId, width: 200, height: 200,),
            ),
            Container(
              margin: EdgeInsets.only(top: 32, left: 8, right: 8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)
              ),
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  restaurant.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 16, left: 8, right: 8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2)
                    ),
                    padding: EdgeInsets.all(8.0),
                    child: Center(child: Text(restaurant.city)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 16, left: 8, right: 8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2)
                    ),
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star_rate, size: 16, color: Colors.orange,),
                        Text(restaurant.rating)
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 8, left: 8, right: 8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)
              ),
              padding: EdgeInsets.all(8.0),
              child: Text(restaurant.description),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 8, left: 8, right: 8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2)
                    ),
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.restaurant, size: 20, color: Colors.blue,),
                            Text(' Daftar Makanan', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Column(
                          children: restaurant.menus.foods.map((e) =>
                              Text('- '+e.name!)).toList(),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 8, left: 8, right: 8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2)
                    ),
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.emoji_food_beverage_rounded, size: 20, color: Colors.blue,),
                            Text(' Daftar Minuman', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Column(
                          children: restaurant.menus.drinks.map((e) =>
                              Text('- '+e.name!)).toList(),
                        )
                      ]
                    ),
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