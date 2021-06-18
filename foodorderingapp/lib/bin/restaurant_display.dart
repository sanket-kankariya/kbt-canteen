// import 'package:flutter/material.dart';
// import 'package:foodorderingapp/models/orderItems.dart';
// import 'package:foodorderingapp/screens/order_page.dart';

// class RestaurantDisplay extends StatefulWidget {
//   @override
//   _RestaurantDisplayState createState() => _RestaurantDisplayState();
// }

// class _RestaurantDisplayState extends State<RestaurantDisplay> {

// List<OrderItems> ordered = [];

//   @override
//   Widget build(BuildContext context) {
//     Widget itemCard({@required String title, @required int amount,@required String weight}) => Card(
//           child: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Text('$title',
//                         style: TextStyle(
//                             fontSize: 17, fontWeight: FontWeight.bold)),
//                     Spacer(),
//                     OutlineButton(
//                       borderSide: BorderSide(color: Colors.redAccent),
//                       child: Text('ADD+'),
//                       onPressed: () {
//                         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                           content: Text('Item Added'),
//                           duration: Duration(milliseconds: 100),
//                         ));
//                         setState(() {
//                           // order['Paneer Tikka Masala'] = 99.00;
//                           ordered.add(OrderItems(
//                               number: '1',
//                               itemName: title,
//                               weight: weight,
//                               amount: amount));
//                         });
//                       },
//                     )
//                   ],
//                 ),
//                 Text('₹$amount'),
//                 SizedBox(
//                   height: 20,
//                 )
//               ],
//             ),
//           ),
//         );
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 FlatButton.icon(
//                   icon: Icon(
//                     Icons.arrow_back_ios,
//                     color: Colors.redAccent,
//                   ),
//                   label: Text(
//                     'Back',
//                     style: TextStyle(color: Colors.redAccent),
//                   ),
//                   onPressed: () => Navigator.pop(context),
//                 ),
//                 Text(
//                   'Curry Leaves',
//                   style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
//                   maxLines: 2,
//                 ),
//                 Text(
//                     'Saputara-Nasik Road, Vadhane Estate, Mhasrul Gaon, near Shubhechha Lawns, Nashik, Maharashtra 422004',
//                     style: TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w300,
//                         color: Colors.grey)),
//                 SizedBox(
//                   height: 4,
//                 ),
//                 Row(
//                   children: <Widget>[
//                     Icon(
//                       Icons.star,
//                       size: 12,
//                       color: Colors.amber,
//                     ),
//                     Icon(
//                       Icons.star,
//                       size: 12,
//                       color: Colors.amber,
//                     ),
//                     Icon(
//                       Icons.star,
//                       size: 12,
//                       color: Colors.amber,
//                     ),
//                     Icon(
//                       Icons.star,
//                       size: 12,
//                       color: Colors.amber,
//                     ),
//                     Icon(
//                       Icons.star,
//                       size: 12,
//                       color: Colors.grey.shade400,
//                     ),
//                     SizedBox(
//                       width: 4,
//                     ),
//                     Text(
//                       "4.3 ",
//                       style:
//                           TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
//                     ),
//                     Text(
//                       "(28 reviews)",
//                       style:
//                           TextStyle(fontSize: 12, color: Colors.grey.shade500),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 8,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Column(
//                       children: [
//                         Text(
//                           'Delivery',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         Text("Available")
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         Text(
//                           'Open Time',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         Text("8:00 AM")
//                       ],
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 8,
//                 ),
//                 Divider(),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     OutlineButton(
//                       borderSide: BorderSide(color: Colors.redAccent),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(50)),
//                       child: Text('Location'),
//                       onPressed: () {},
//                     ),
//                     OutlineButton(
//                       borderSide: BorderSide(color: Colors.redAccent),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(50)),
//                       child: Text('Contact'),
//                       onPressed: () {},
//                     )
//                   ],
//                 ),
//                 Divider(),
//                 Text(
//                   'Menu',
//                   style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//                 ),
//                 itemCard(
//                     title: 'Paneer Tikka Masala', amount: 99, weight: '200gm'),
//                 itemCard(title: 'Sev Bhaji', amount: 40, weight: '100gm'),
//                 itemCard(title: 'Dosa', amount: 60, weight: '1nos'),
//                 itemCard(title: 'Veg. Pulao', amount: 80, weight: '150gm'),
//                 itemCard(title: 'Pitla', amount: 45, weight: '150gm'),
//                 itemCard(title: 'Pao Bhaji', amount: 150, weight: '1nos'),
//                 itemCard(title: 'Rice', amount: 70, weight: '200gm'),
//               ],
//             ),
//           ),
//         ),
//       ),
//       floatingActionButton: ordered.isEmpty
//           ? null
//           : FloatingActionButton(
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => OrderPage(ordered: ordered,),
//                     ));
//               },
//               child: Icon(Icons.arrow_forward),
//             ),
//     );
//   }
// }
