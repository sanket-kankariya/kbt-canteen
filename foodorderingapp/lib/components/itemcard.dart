import 'package:flutter/material.dart';
import 'package:foodorderingapp/Data/data.dart';
import 'package:foodorderingapp/models/orderItems.dart';
// ignore: must_be_immutable
class ItemCard extends StatefulWidget {
  String title;  int amount; String weight;
  ItemCard({@required this.title, @required this.amount,@required this.weight});
  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(widget.title,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold)),
                    Spacer(),
                    OutlineButton(
                      borderSide: BorderSide(color: Colors.redAccent),
                      child: Text('ADD+'),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Item Added'),
                          duration: Duration(milliseconds: 100),
                        ));
                        setState(() {
                          // order['Paneer Tikka Masala'] = 99.00;
                          orderedItem.add(OrderItems(
                              number: '1',
                              itemName: widget.title,
                              weight:widget. weight,
                              amount: widget.amount));
                        });
                      },
                    )
                  ],
                ),
                Text('₹'+widget.amount.toString()),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        );
  }
}