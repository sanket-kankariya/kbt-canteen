// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// // ignore: unused_import
// import 'package:Takeaway/models/cuisineItems.dart';
// import 'package:Takeaway/models/popularItems.dart';

// // ignore: must_be_immutable
// class PopularRestaurantsCard extends StatefulWidget {
//   PopularRestraunt popularItems;
//   PopularRestaurantsCard({@required this.popularItems});
//   @override
//   _CuisineItemsCardState createState() => _CuisineItemsCardState();
// }

// class _CuisineItemsCardState extends State<PopularRestaurantsCard> {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RestaurantDisplay(),)),
//           child: Container(
//         padding: EdgeInsets.only(right: 16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             ClipRRect(
//               child: Image.asset(
//                 widget.popularItems.image,
//                 height: 120,
//                 width: 200,
//                 fit: BoxFit.cover,
//               ),
//               borderRadius: BorderRadius.circular(5),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Text(
//               widget.popularItems.text,
//               style: TextStyle(fontWeight: FontWeight.w600),
//             ),
//             SizedBox(
//               height: 4,
//             ),
//             Row(
//               children: <Widget>[
//                 Icon(
//                   Icons.star,
//                   size: 12,
//                   color: Colors.amber,
//                 ),
//                 Icon(
//                   Icons.star,
//                   size: 12,
//                   color: Colors.amber,
//                 ),
//                 Icon(
//                   Icons.star,
//                   size: 12,
//                   color: Colors.amber,
//                 ),
//                 Icon(
//                   Icons.star,
//                   size: 12,
//                   color: Colors.amber,
//                 ),
//                 Icon(
//                   Icons.star,
//                   size: 12,
//                   color: Colors.grey.shade400,
//                 ),
//                 SizedBox(
//                   width: 4,
//                 ),
//                 Text(
//                   "4.3 ",
//                   style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
//                 ),
//                 Text(
//                   "(28 reviews)",
//                   style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
