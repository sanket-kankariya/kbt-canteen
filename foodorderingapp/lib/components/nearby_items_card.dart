import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodorderingapp/models/nearbyItems.dart';

// ignore: must_be_immutable
class ListItemCard extends StatefulWidget {
  NearByItems listItem;
  ListItemCard({@required this.listItem});
  @override
  _ListItemCardState createState() => _ListItemCardState();
}

class _ListItemCardState extends State<ListItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              widget.listItem.image,
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                widget.listItem.text,
                style: TextStyle(
                    height: 1.3, fontSize: 14, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                    size: 12,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    size: 12,
                    color: Colors.grey.shade400,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "4.3 ",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                  Text(
                    "(28 reviews)",
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
