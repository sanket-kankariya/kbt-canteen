import 'package:flutter/material.dart';
import 'package:foodorderingapp/Data/data.dart';
import 'package:foodorderingapp/components/itemcard.dart';
import 'package:foodorderingapp/screens/ordersummary.dart';

class SnackMenu extends StatefulWidget {
  @override
  _SnackMenuState createState() => _SnackMenuState();
}

class _SnackMenuState extends State<SnackMenu> {
  List<ItemCard> menuItems = [
    ItemCard(title: 'VadaPao',amount: 15,weight: '40gm',),
    ItemCard(title: 'Upma',amount: 40,weight: '100gm',),
    ItemCard(title: 'Poha',amount: 40,weight: '100gm',),
    ItemCard(title: 'Dosa',amount: 60,weight: '70gm',),
    ItemCard(title: 'Paratha',amount: 60,weight: '70gm',),
    ItemCard(title: 'Sabudana Kichadi',amount: 40,weight: '70gm',),
    ItemCard(title: 'Misal',amount: 35,weight: '70gm',),
    ItemCard(title: 'Bhuje',amount: 25,weight: '70gm',),
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