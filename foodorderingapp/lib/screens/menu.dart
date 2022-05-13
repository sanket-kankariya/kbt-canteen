import 'package:Takeaway/screens/snackmenu.dart';
import 'package:Takeaway/services/authService.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'cakes.dart';
import 'drinks.dart';
import 'ordersummary.dart';

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
          IconButton(
              onPressed: () {
                context.read<AuthService>().signOut();
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 10, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.network(
                    "https://scontent-bom1-1.xx.fbcdn.net/v/t1.6435-9/121464009_103069451592268_1928310463694548591_n.jpg?stp=dst-jpg_s960x960&_nc_cat=105&ccb=1-6&_nc_sid=e3f864&_nc_ohc=_vbBAUA9BUwAX8jNuGF&_nc_ht=scontent-bom1-1.xx&oh=00_AT-ZTgsCumzag8CRswBykM2Rh4zGhDLk6zX288ARleLrUg&oe=62A1D295",
                    fit: BoxFit.fitWidth,
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Text(
                  'Hotel Green Leaves',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  maxLines: 2,
                ),
                Text(
                  '1, 29/30, Good Shepherd Church Road, Kausar Baugh Rd Pune, Maharashtra 411048',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 122, 122, 122)),
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
                      onPressed: () {
                        launchUrl(Uri.parse(
                            "https://www.google.com/maps/place/Hotel+Green+Leaves/@18.4703314,73.9012367,18.3z/data=!4m5!3m4!1s0x3bc2eb3b52acec67:0xc38c69b002392b68!8m2!3d18.4699735!4d73.9033439?hl=en"));
                      },
                    ),
                    OutlineButton(
                      borderSide: BorderSide(color: Colors.redAccent),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Text('Contact'),
                      onPressed: () {
                        launchUrl(Uri.parse("tel:+918888888888"));
                      },
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
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SnackMenu(),
                              ));
                        },
                        title: Text('Snacks'),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Drinks(),
                              ));
                        },
                        title: Text('Drinks'),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Cakes(),
                              ));
                        },
                        title: Text('Desserts'),
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
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.shopping_basket_outlined),
          onPressed: () => showModalBottomSheet(
              context: context, builder: (context) => OrderSummary())),
    );
  }
}
