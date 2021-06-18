import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FeedBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
                      child: Container(
                        height: 300,
                        child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            Text("Feedback on order ID : Sjuyfdasu"),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            Container(
              width: MediaQuery.of(context).size.width - 20,
              child: TextField(
                minLines: 3,
                maxLines: 10,
                decoration: InputDecoration(labelText: 'Feedback'),
              ),
            ),
            OutlinedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('Submit'),
            )
        ],
      ),
                      ),
          ),
    );
  }
}
