import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodorderingapp/Data/data.dart';
import 'package:foodorderingapp/main.dart';
import 'package:foodorderingapp/screens/orderdetails.dart';
import 'package:uuid/uuid.dart';


class OrderSummary extends StatefulWidget {
  @override
  _OrderSummaryState createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  String orderId = Uuid().v1();
  String time = 'pick a time';
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Order Summary",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ListView.builder(
                    itemCount: orderedItem.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 24,
                                width: 24,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.grey.shade300),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Text(
                                    orderedItem[index].number,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text("*"),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      orderedItem[index].itemName,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      orderedItem[index].weight,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey.shade500),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                '₹${orderedItem[index].amount}',
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(onPressed: (){
                                setState(() {
                                  orderedItem.removeAt(index);
                                });
                              }, icon: Icon(Icons.cancel),)
                            ],
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          Divider(
                            thickness: 1.3,
                            color: Colors.grey.shade200,
                            height: 1,
                          ),
                          SizedBox(
                            height: 14,
                          ),
                        ],
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Order",
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade500),
                      ),
                      Text(
                        '₹'+getTotal().toString(),
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: <Widget>[
                  //     Text(
                  //       "Delivery",
                  //       style: TextStyle(
                  //           fontSize: 14, color: Colors.grey.shade500),
                  //     ),
                  //     Text(
                  //       "₹20.00",
                  //       style: TextStyle(
                  //           fontSize: 14, color: Colors.grey.shade500),
                  //     ),
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Total",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "₹"+getTotal().toString(),
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Shedule Time",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Row(
                      children: [
                        OutlinedButton(
                          child: Text(time),
                          onPressed: () async {
                            TimeOfDay _endHour = await showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                            );
                            if (_endHour != null) {
                              setState(() {
                                time = _endHour.format(context);
                              });
                            }
                          },
                        ),
                      ],
                    ),
                  // Text(
                  //   "Address",
                  //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  // ),
                  // SizedBox(
                  //   height: 12,
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: <Widget>[
                  //     // Text(
                  //     //   "775, Shalimar, Nashik",
                  //     //   style: TextStyle(
                  //     //       fontSize: 14,
                  //     //       color: Colors.grey.shade500,
                  //     //       height: 1.4),
                  //     // ),
                  //     // Text(
                  //     //   "Change",
                  //     //   style: TextStyle(fontSize: 14, color: Colors.redAccent),
                  //     // ),
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  Text(
                    "Payment",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.asset(
                        "images/mastercard.png",
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "**** **** **** ",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade500,
                            height: 1.4),
                      ),
                      Expanded(
                        child: Text(
                          "1420",
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade500),
                        ),
                      ),
                      Text(
                        "Change",
                        style: TextStyle(fontSize: 14, color: Colors.redAccent),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 80,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: FlatButton(
                  onPressed: () async {
                    List<String> items = orderedItem.map((e) => e.itemName).toList();
                    print(items);
                    if (orderedItem.isNotEmpty && time != 'pick a time') {
                      database.doc(DateTime.now().toString()).set({
                        'orderId' :orderId,
                        'time':time,
                        'orders': items,
                      });
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderDetails(
                            time: time,
                            amount: getTotal(),
                            order: orderedItem,
                            orderId: orderId,
                          ),
                        ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Error Processing order'),
                          duration: Duration(milliseconds: 100),
                        ));
                    }
                  },
                  child: Text(
                    "SUBMIT ORDER",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  color: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
          )
        ],
      );
  }
  getTotal(){
    int totalAmount = 0;
    orderedItem.forEach((order) {
      totalAmount = totalAmount + order.amount;
    });
    return totalAmount;
  }
}