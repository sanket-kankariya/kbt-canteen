import 'package:flutter/material.dart';
import 'package:foodorderingapp/screens/feedback.dart';
import 'package:foodorderingapp/screens/pay.dart';

class OrderDetails extends StatelessWidget {
  final String time;
  final int amount;
  final List order;
  OrderDetails({@required this.amount, @required this.order,this.time});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: OutlinedButton.icon(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.redAccent,
            ),
            label: Text(
              'Back',
              style: TextStyle(color: Colors.redAccent),
            ), 
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Track Order",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Thu,25 Mar'),
              Row(
                children: [
                  Text('Order ID:sp45r32'),
                  Spacer(),
                  Text(
                    'Amt: ₹$amount',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ETA: 15 Min',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.radio_button_checked_outlined,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Order Approved'),
                            Spacer(),
                            Text(time),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.radio_button_checked_outlined,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Processing your Order'),
                            Spacer(),
                            Text('9:01am'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.radio_button_checked_outlined,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Order Ready to Pick'),
                            // Spacer(),
                            // Text('ETA time 9:10am'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.radio_button_checked_outlined,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Payment Done'),
                            Spacer(),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.radio_button_checked_outlined,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Order Picked'),
                            Spacer(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  title: Text('Pay Now'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PayNow(),));
                  },
                ),
              ),
              Card(
                elevation: 5,
                child: ListTile(
                  title: Text('FeedBack'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FeedBack(),));
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
