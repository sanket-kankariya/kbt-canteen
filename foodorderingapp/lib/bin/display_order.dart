// import 'package:flutter/material.dart';
// import 'package:foodorderingapp/models/orderItems.dart';

// class DisplayOrder extends StatelessWidget {
//   final int amount;
//   final List<OrderItems> order;
//   DisplayOrder({@required this.amount, @required this.order});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           elevation: 0,
//           backgroundColor: Colors.white,
//           automaticallyImplyLeading: false,
//           title: OutlinedButton.icon(
//             icon: Icon(
//               Icons.arrow_back_ios,
//               color: Colors.redAccent,
//             ),
//             label: Text(
//               'Back',
//               style: TextStyle(color: Colors.redAccent),
//             ), 
//             onPressed: () => Navigator.pop(context),
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Track Order",
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Text('Thu,25 Mar'),
//               Row(
//                 children: [
//                   Text('Order ID:sp45r32'),
//                   Spacer(),
//                   Text(
//                     'Amt: ₹$amount',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Card(
//                 elevation: 5,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'ETA: 15 Min',
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 20),
//                       ),
//                       SizedBox(
//                         height: 17,
//                       ),
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.radio_button_checked_outlined,
//                             color: Colors.green,
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text('Order Approved'),
//                           Spacer(),
//                           Text('9:00am'),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.radio_button_checked_outlined,
//                             color: Colors.green,
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text('Processing your Order'),
//                           Spacer(),
//                           Text('9:01am'),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.radio_button_checked_outlined,
//                             color: Colors.grey,
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text('Order Ready to Pick'),
//                           Spacer(),
//                           Text('ETA time 9:10am'),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.radio_button_checked_outlined,
//                             color: Colors.grey,
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text('Payment Done'),
//                           Spacer(),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         children: [
//                           Icon(
//                             Icons.radio_button_checked_outlined,
//                             color: Colors.grey,
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Text('Order Picked'),
//                           Spacer(),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Card(
//                 elevation: 5,
//                 child: ListTile(
//                   title: Text('View Cart Summary'),
//                   trailing: Icon(Icons.arrow_forward),
//                   onTap: () {},
//                 ),
//               )
//             ],
//           ),
//         ));
//   }
// }
