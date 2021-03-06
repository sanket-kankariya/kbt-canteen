// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:Takeaway/models/orderItems.dart';
// import 'package:Takeaway/bin/display_order.dart';

// // ignore: must_be_immutable
// class OrderPage extends StatefulWidget {
//   List<OrderItems> ordered;
//   OrderPage({@required this.ordered});
//   @override
//   _OrderPageState createState() => _OrderPageState(ordered);
// }

// class _OrderPageState extends State<OrderPage> {
//   _OrderPageState(this.orderItems);
//   final List<OrderItems> orderItems;
//   int totalAmount = 0;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getTotal();
//   }

//   getTotal() {
//     orderItems.forEach((order) {
//       totalAmount = totalAmount + order.amount;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         automaticallyImplyLeading: false,
//         title: FlatButton.icon(
//           icon: Icon(
//             Icons.arrow_back_ios,
//             color: Colors.redAccent,
//           ),
//           label: Text(
//             'Back',
//             style: TextStyle(color: Colors.redAccent),
//           ),
//           onPressed: () => Navigator.pop(context),
//         ),
//       ),
//       body: Stack(
//         children: <Widget>[
//           SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.only(left: 16, right: 16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     "Order Summary",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
//                   ),
//                   SizedBox(
//                     height: 40,
//                   ),
//                   ListView.builder(
//                     itemCount: orderItems.length,
//                     shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     itemBuilder: (context, index) {
//                       return Column(
//                         children: <Widget>[
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: <Widget>[
//                               Container(
//                                 height: 24,
//                                 width: 24,
//                                 decoration: BoxDecoration(
//                                     border:
//                                         Border.all(color: Colors.grey.shade300),
//                                     borderRadius: BorderRadius.circular(5)),
//                                 child: Center(
//                                   child: Text(
//                                     orderItems[index].number,
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 12),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 8,
//                               ),
//                               Text("*"),
//                               SizedBox(
//                                 width: 8,
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: <Widget>[
//                                     Text(
//                                       orderItems[index].itemName,
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.w600),
//                                     ),
//                                     SizedBox(
//                                       height: 8,
//                                     ),
//                                     Text(
//                                       orderItems[index].weight,
//                                       style: TextStyle(
//                                           fontSize: 12,
//                                           color: Colors.grey.shade500),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Text(
//                                 '???${orderItems[index].amount}',
//                                 style: TextStyle(
//                                     color: Colors.redAccent,
//                                     fontSize: 17,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 14,
//                           ),
//                           Divider(
//                             thickness: 1.3,
//                             color: Colors.grey.shade200,
//                             height: 1,
//                           ),
//                           SizedBox(
//                             height: 14,
//                           ),
//                         ],
//                       );
//                     },
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       Text(
//                         "Order",
//                         style: TextStyle(
//                             fontSize: 14, color: Colors.grey.shade500),
//                       ),
//                       Text(
//                         "???$totalAmount",
//                         style: TextStyle(
//                             fontSize: 14, color: Colors.grey.shade500),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 12,
//                   ),
//                   // Row(
//                   //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   //   children: <Widget>[
//                   //     Text(
//                   //       "Delivery",
//                   //       style: TextStyle(
//                   //           fontSize: 14, color: Colors.grey.shade500),
//                   //     ),
//                   //     Text(
//                   //       "???20.00",
//                   //       style: TextStyle(
//                   //           fontSize: 14, color: Colors.grey.shade500),
//                   //     ),
//                   //   ],
//                   // ),
//                   // SizedBox(
//                   //   height: 20,
//                   // ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       Text(
//                         "Total",
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.w600),
//                       ),
//                       Text(
//                         "???$totalAmount",
//                         style: TextStyle(
//                             fontSize: 22, fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     "Address",
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//                   ),
//                   SizedBox(
//                     height: 12,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       Text(
//                         "775, Shalimar, Nashik",
//                         style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.grey.shade500,
//                             height: 1.4),
//                       ),
//                       Text(
//                         "Change",
//                         style: TextStyle(fontSize: 14, color: Colors.redAccent),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     "Payment",
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//                   ),
//                   SizedBox(
//                     height: 12,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       Image.asset(
//                         "images/mastercard.png",
//                         height: 24,
//                         width: 24,
//                       ),
//                       SizedBox(
//                         width: 8,
//                       ),
//                       Text(
//                         "**** **** **** ",
//                         style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.grey.shade500,
//                             height: 1.4),
//                       ),
//                       Expanded(
//                         child: Text(
//                           "1420",
//                           style: TextStyle(
//                               fontSize: 14, color: Colors.grey.shade500),
//                         ),
//                       ),
//                       Text(
//                         "Change",
//                         style: TextStyle(fontSize: 14, color: Colors.redAccent),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 100,
//                   )
//                 ],
//               ),
//             ),
//           ),
//           SafeArea(
//             child: Align(
//               alignment: Alignment.bottomLeft,
//               child: Container(
//                 height: 80,
//                 width: double.infinity,
//                 padding: EdgeInsets.all(16),
//                 child: FlatButton(
//                   onPressed: () {
//                     Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => DisplayOrder(
//                             amount: totalAmount,
//                             order: orderItems,
//                           ),
//                         ));
//                   },
//                   child: Text(
//                     "SUBMIT ORDER",
//                     style: TextStyle(
//                         color: Colors.white, fontWeight: FontWeight.bold),
//                   ),
//                   color: Colors.redAccent,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(4),
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
