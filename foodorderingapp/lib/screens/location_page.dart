import 'package:flutter/material.dart';
import 'package:foodorderingapp/screens/main_page.dart';

class PickLocation extends StatefulWidget {
  @override
  _PickLocationState createState() => _PickLocationState();
}

class _PickLocationState extends State<PickLocation> {
  final List<String> location = [
    'Ahmednagar',
    'Akola',
    'Amravati',
    'Aurangabad',
    'Bhandara',
    'Beed',
    'Buldhana',
    'Chandrapur',
    'Dhule',
    'Gadchiroli',
    'Gondia',
    'Hingoli',
    'Jalgaon',
    'Jalna',
    'Kolhapur',
    'Latur',
    'Mumbai City',
    'Mumbai suburban',
    'Nandurbar',
    'Nanded',
    'Nagpur',
    'Nashik',
    'Osmanabad',
    'Parbhani',
    'Pune',
    'Raigad',
    'Ratnagiri',
    'Sindhudurg',
    'Sangli',
    'Solapur',
    'Satara',
    'Thane',
    'Wardha',
    'Washim',
    'Yavatmal',
  ];
  String selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(
              'Choose your City',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: location.length,
                    itemBuilder: (BuildContext ctxt, int i) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selected = location[i];
                              });
                            },
                            child: ListTile(
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              title: Text(
                                location[i],
                                style: TextStyle(
                                    color: location[i] == selected
                                        ? Colors.redAccent
                                        : Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                              trailing: location[i] == selected
                                  ? Icon(
                                      Icons.check,
                                      color: Colors.redAccent,
                                    )
                                  : null,
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                            thickness: 0.3,
                          )
                        ],
                      );
                      // Column(
                      //   children: [
                      //     Text(location[i]),
                      //     Divider()
                      //   ],
                      // );
                    }))
          ],
        ),
      ),
      floatingActionButton: selected == null
          ? null
          : FloatingActionButton(
              onPressed: () {
                // appCurrentUser.location = selected;
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MainPage()));
              },
              child: Icon(Icons.arrow_forward_ios_rounded),
            ),
    );
  }
}
