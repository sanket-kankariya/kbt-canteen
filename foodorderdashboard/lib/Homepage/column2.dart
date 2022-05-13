import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodorderdashboard/Constants/colors.dart';
// ignore: avoid_web_libraries_in_flutter

import 'package:foodorderdashboard/Constants/functions.dart';
import 'package:foodorderdashboard/main.dart';

class Column2 extends StatefulWidget {
  final String selectedUser;
  Column2({
    required this.selectedUser,
  });
  @override
  _Column2State createState() => _Column2State();
}

class _Column2State extends State<Column2> {
  final ScrollController column2controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return widget.selectedUser == ''
        ? Center(
            child: Text('Please select a User'),
          )
        // : Container(
        //     decoration: BoxDecoration(
        //       // image: DecorationImage(
        //       //   image: AssetImage("assets/images/sky.jpg"),
        //       //   fit: BoxFit.cover,
        //       // ),
        //     ),
        //     width: cwidth(context, 70),
        //     child: Column(
        //       children: [
        //         AppBar(
        //           backgroundColor: cpallet[2],
        //           title: Row(
        //             children: [
        //               OutlinedButton(onPressed: (){}, child: Text('Order Completed')),
        //               Spacer(),
        //               Text('Total - '),
        //             ],
        //           )
        //         ),
        : StreamBuilder(
            stream: database
                .where('orderId', isEqualTo: widget.selectedUser)
                .limit(1)
                .snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return itsLoading('user docs');
              }
              if (snapshot.data!.docs.isEmpty) {
                return Center(
                  child: Text('No Data To Show'),
                );
              }
              String _time = snapshot.data!.docs[0].get('time');
              List _orders = snapshot.data!.docs[0].get('orders');
              bool _pending = snapshot.data!.docs[0].get('pending');
              bool _payment = snapshot.data!.docs[0].get('payment');
              List _price = snapshot.data!.docs[0].get('price');
              int _total = _price.reduce((a, b) => a + b);
              return Flexible(
                child: Scrollbar(
                  controller: column2controller,
                  isAlwaysShown: true,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        AppBar(
                            backgroundColor: cpallet[2],
                            title: Row(
                              children: [
                                OutlinedButton(
                                    onPressed: () {},
                                    child: Text('Order Completed')),
                                Spacer(),
                                Text('Total - Rs ' + _total.toString()),
                              ],
                            )),
                          Flexible(child: ListView.builder(
                            itemCount: _orders.length,
                            itemBuilder: (context, index) => ListTile(
                              title: Text(_orders[index]),
                              trailing: Text("Rs" + _price[index]),
                            ),
                            ))
                      ],
                    ),
                  ),
                ),
              );
            });
    //     ],
    //   ),
    // );
  }
}
