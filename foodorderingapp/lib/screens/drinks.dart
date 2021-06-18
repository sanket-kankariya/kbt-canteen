import 'package:flutter/material.dart';
import 'package:foodorderingapp/Data/data.dart';
import 'package:foodorderingapp/components/itemcard.dart';
import 'package:foodorderingapp/screens/ordersummary.dart';

class Drinks extends StatefulWidget {
  @override
  _DrinksState createState() => _DrinksState();
}

class _DrinksState extends State<Drinks> {
  List<ItemCard> menuItems = [
    ItemCard(title: 'ThumpsUp',amount: 45,weight: '500ml',),
    ItemCard(title: 'Mineral Water',amount: 20,weight: '1Ltr',),
    ItemCard(title: 'Lassi',amount: 20,weight: '250ml',),
    ItemCard(title: 'Chach',amount: 15,weight: '250ml',),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) => menuItems[index],),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.shopping_basket_outlined),onPressed: ()=> showModalBottomSheet(context: context, builder: (context) => OrderSummary())),
    );
  }
}