
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:foodorderdashboard/Constants/colors.dart';
import 'package:foodorderdashboard/Constants/functions.dart';
import 'package:foodorderdashboard/main.dart';

class Column1 extends StatefulWidget {
  final Function changeSelectedUser;
  const Column1({required this.changeSelectedUser});

  @override
  _Column1State createState() => _Column1State();
}

class _Column1State extends State<Column1> {
  ScrollController column1controller = ScrollController();
  GlobalKey streamKey = GlobalKey();
  // to check which user is selected
  String selectedId='';
  List users = [];
  String searchText = '';
  @override
  void initState() { 
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: cpallet[0],
      width: cwidth(context, 30),
      child: Column(
        children: [
          AppBar(
            backgroundColor: cpallet[2],
            title: Text(
              'Orders',
              style: TextStyle(
                color: cpallet[4],
              ),
            ),
          ),
          // Users list
          Flexible(
              child: StreamBuilder(
            stream: database
                .snapshots(),
                key: streamKey,
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return CircularProgressIndicator();
              }
              return Scrollbar(
                  controller: column1controller,
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.all(10.0),
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      String tileOrderId = snapshot.data!.docs[index].get('orderId');
                      return GestureDetector(
                        onTap: () {
                          setState(()  {
                            selectedId = tileOrderId;
                            widget.changeSelectedUser(tileOrderId);
                          });
                        },
                        child: ListTile(
                          tileColor: selectedId ==  tileOrderId
                              ? Colors.grey
                              : Colors.white,
                          title:  Text(tileOrderId),
                          trailing:  snapshot.data!.docs[index].get('pending')
                              ? Icon(
                                  Icons.trip_origin,
                                  color: Colors.green,
                                )
                              : null,
                        ),
                      );
                    },
                  )
              );
            },
          ))
        ],
      ),
    );
  }
}
