import 'package:flutter/material.dart';

class RestaurantDisplay extends StatefulWidget {
  @override
  _RestaurantDisplayState createState() => _RestaurantDisplayState();
}

class _RestaurantDisplayState extends State<RestaurantDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FlatButton.icon(
                  icon: Icon(Icons.arrow_back_ios,color: Colors.redAccent,),
                  label: Text('Back',style: TextStyle(color: Colors.redAccent),),
                  onPressed: () => Navigator.pop(context),
                ),
                Text(
                  'Curry Leaves',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  maxLines: 2,
                ),
                Text('Saputara-Nasik Road, Vadhane Estate, Mhasrul Gaon, near Shubhechha Lawns, Nashik, Maharashtra 422004',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey)),
                SizedBox(
                  height: 4,
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
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Delivery',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Available")
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Open Time',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("8:00 AM")
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
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Paneer Tikka Masala',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold)),
                            Spacer(),
                            OutlineButton(
                              borderSide: BorderSide(color: Colors.redAccent),
                              child: Text('ADD+'),
                              onPressed: () {},
                            )
                          ],
                        ),
                        Text('₹99.00'),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Veg. Pulao',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold)),
                            Spacer(),
                            OutlineButton(
                              borderSide: BorderSide(color: Colors.redAccent),
                              child: Text('ADD+'),
                              onPressed: () {},
                            )
                          ],
                        ),
                        Text('₹149.00'),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Pithala',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold)),
                            Spacer(),
                            OutlineButton(
                              borderSide: BorderSide(color: Colors.redAccent),
                              child: Text('ADD+'),
                              onPressed: () {},
                            )
                          ],
                        ),
                        Text('₹129.00'),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Pao Bhaji',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold)),
                            Spacer(),
                            OutlineButton(
                              borderSide: BorderSide(color: Colors.redAccent),
                              child: Text('ADD+'),
                              onPressed: () {},
                            )
                          ],
                        ),
                        Text('₹99'),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Malai Kofta',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold)),
                            Spacer(),
                            OutlineButton(
                              borderSide: BorderSide(color: Colors.redAccent),
                              child: Text('ADD+'),
                              onPressed: () {},
                            )
                          ],
                        ),
                        Text('₹199.00'),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Kaju Kurry',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold)),
                            Spacer(),
                            OutlineButton(
                              borderSide: BorderSide(color: Colors.redAccent),
                              child: Text('ADD+'),
                              onPressed: () {},
                            )
                          ],
                        ),
                        Text('₹169.00'),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
