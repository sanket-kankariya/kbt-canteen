import 'package:flutter/material.dart';

class PayNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         children: [
           Icon(Icons.check_box,size: 45,color: Colors.green,),
           Text('Payment Done'),
           Text("your Payment is succesfully Done"),
         ],
      ),
    );
  }
}