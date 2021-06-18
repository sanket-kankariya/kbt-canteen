import 'package:flutter/material.dart';
import 'package:foodorderingapp/Data/data.dart';
import 'package:foodorderingapp/models/orderItems.dart';
import 'package:foodorderingapp/screens/ordersummary.dart';
import 'package:foodorderingapp/screens/snackmenu.dart';
import 'package:foodorderingapp/screens/drinks.dart';
import 'package:foodorderingapp/screens/cakes.dart';
import 'package:foodorderingapp/services/authService.dart';
import 'package:provider/provider.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        actions: [
          IconButton(onPressed: (){
                      context.read<AuthService>().signOut(
                      );
      }, icon: Icon(Icons.logout))],),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 10, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kbt Canteen',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  maxLines: 2,
                ),
                // SizedBox(height: 10,),
                // Text(
                //     'Saputara-Nasik Road, Vadhane Estate, Mhasrul Gaon, near Shubhechha Lawns, Nashik, Maharashtra 422004',
                //     style: TextStyle(
                //         fontSize: 12,
                //         fontWeight: FontWeight.w300,
                //         color: Colors.grey[700])),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      size: 12,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      size: 12,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      size: 12,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      size: 12,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      size: 12,
                      color: Colors.grey.shade400,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "4.3 ",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                    ),
                    Text(
                      "(28 reviews)",
                      style:
                          TextStyle(fontSize: 12, color: Colors.grey.shade500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Open Time',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("8:00 AM")
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Close Time',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("6:00 PM")
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlineButton(
                      borderSide: BorderSide(color: Colors.redAccent),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Text('Location'),
                      onPressed: () {},
                    ),
                    OutlineButton(
                      borderSide: BorderSide(color: Colors.redAccent),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Text('Contact'),
                      onPressed: () {},
                    )
                  ],
                ),
                Divider(),
                Text(
                  'Menu',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Column(
                    children: [
                      ListTile(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SnackMenu(),));
                        },
                        title: Text('Snacks'),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                      ListTile(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Drinks(),));},
                        title: Text('Drinks'),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                      ListTile(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Cakes(),));},
                        title: Text('Cake'),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ],
                  ),
                )
                // itemCard(
                //     title: 'Paneer Tikka Masala', amount: 99, weight: '200gm'),
                // itemCard(title: 'Sev Bhaji', amount: 40, weight: '100gm'),
                // itemCard(title: 'Dosa', amount: 60, weight: '1nos'),
                // itemCard(title: 'Veg. Pulao', amount: 80, weight: '150gm'),
                // itemCard(title: 'Pitla', amount: 45, weight: '150gm'),
                // itemCard(title: 'Pao Bhaji', amount: 150, weight: '1nos'),
                // itemCard(title: 'Rice', amount: 70, weight: '200gm'),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: orderedItem.isEmpty? null : FloatingActionButton(child: Icon(Icons.shopping_basket_outlined),onPressed: ()=> showModalBottomSheet(context: context, builder: (context) => OrderSummary())),
    );
  }
}
