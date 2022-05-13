import 'package:flutter/material.dart';

class PayNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: FittedBox(
                child: Image.network("https://quicksavaari.com/successgif.gif",
                    repeat: ImageRepeat.repeat),
              ),
            ),
            // Text('Payment Done'),
            Text(
              "Your Payment is succesfully Done",
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
