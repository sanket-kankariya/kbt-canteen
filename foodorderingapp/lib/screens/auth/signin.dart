import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodorderingapp/screens/location_page.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  

  bool signin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: LitAuth.custom(
            builder: (context, child) {
              return SignInForm(
                  child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      signin ? 'Sign In' : 'Register',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    EmailTextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                        labelText: 'Email',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    PasswordTextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon((Icons.lock_open_outlined)),
                        labelText: 'Password',
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.redAccent.withOpacity(0.5),
                            blurRadius: 7,
                            offset: Offset(5, 7),
                          ),
                        ],
                      ),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        color: Colors.redAccent,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          child: Center(
                            child: Text(
                              signin ? 'Sign In' : 'Register',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          signin
                              ? context.signInWithEmailAndPassword()
                              : context.registerWithEmailAndPassword();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(signin ? 'New to App?' : 'Already a member?'),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  signin = !signin;
                                });
                              },
                              child: Text(
                                signin ? 'Register here.' : 'Sign In',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.redAccent),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ));
            },
            onAuthSuccess: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PickLocation()));
            },
          )),
        ],
      ),
    );
  }
}
