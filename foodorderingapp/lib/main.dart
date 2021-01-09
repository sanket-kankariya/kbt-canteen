import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodorderingapp/screens/auth/signin.dart';
import 'package:foodorderingapp/screens/home_page.dart';
import 'package:foodorderingapp/screens/location_page.dart';
import 'package:foodorderingapp/screens/main_page.dart';
import 'package:foodorderingapp/screens/order_page.dart';
import 'package:foodorderingapp/screens/search.dart';
// ignore: unused_import
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool firebaseLoading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      setState(() {
        firebaseLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return firebaseLoading? Center(child: CircularProgressIndicator(),) : LitAuthInit(
      authProviders: AuthProviders(
        emailAndPassword: true,
        anonymous: true,
      ),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: Colors.redAccent,
            accentColor: Colors.redAccent,
            scaffoldBackgroundColor: Colors.white),
        debugShowCheckedModeBanner: false,
        routes: {
          '/home': (_) => HomePage(),
          '/picklocation': (_) => PickLocation(),
          '/search': (_) => Search(),
        },
        home:
            // MainPage(),
            LitAuthState(
          authenticated: HomePage(),
          unauthenticated: Signin(),
        ),
      ),
    );
  }
}
