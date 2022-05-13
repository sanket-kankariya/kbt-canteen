import 'package:flutter/material.dart';

double cwidth(BuildContext context, int multiplier){
  double value = (MediaQuery.of(context).size.width/100) * multiplier;
  return value;
}
double cheight(BuildContext context, int multiplier){
  double value = (MediaQuery.of(context).size.height/100) * multiplier;
  return value;
}
Widget itsLoading(String whatisloading){
  print(whatisloading + 'is loading');
  return Center(child: CircularProgressIndicator(),);
}