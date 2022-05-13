import 'package:flutter/material.dart';
import 'package:Takeaway/Data/data.dart';
import 'package:Takeaway/components/itemcard.dart';
import 'package:Takeaway/screens/ordersummary.dart';

class Cakes extends StatefulWidget {
  @override
  _CakesState createState() => _CakesState();
}

class _CakesState extends State<Cakes> {
  List<ItemCard> menuItems = [
    ItemCard(
      title: 'Chocolate',
      amount: 350,
      weight: '500gm',
    ),
    ItemCard(
      title: 'Pineapple',
      amount: 400,
      weight: '500gm',
    ),
    ItemCard(
      title: 'BlackForest',
      amount: 400,
      weight: '500gm',
    ),
    ItemCard(
      title: 'Ice Cake',
      amount: 200,
      weight: '500gm',
    ),
    ItemCard(
      title: 'Icecream Cake',
      amount: 600,
      weight: '500gm',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) => menuItems[index],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.shopping_basket_outlined),
          onPressed: () => showModalBottomSheet(
              context: context, builder: (context) => OrderSummary())),
    );
  }
}
