import 'package:flutter/material.dart';
import 'package:foodorderingapp/services/authService.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  bool action= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:action? Stack(
        children: [
          Center(
            child: Container(
              // height: 200,
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          labelText: 'Email', border: OutlineInputBorder()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          labelText: 'Password', border: OutlineInputBorder()),
                    ),
                  ),
                  TextButton(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Text('Login'),
                    ),
                    style: TextButton.styleFrom(primary: Colors.blue),
                    onPressed: ()  {
                      context.read<AuthService>().signIn(
                        email: emailController.text.trim(),
                        password: passwordController.text.trim(),
                      );
                    },
                  ),
                  TextButton(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Text('Register Instead?'),
                    ),
                    style: TextButton.styleFrom(primary: Colors.blue),
                    onPressed: ()  {
                      setState(() {
                        action = false;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            right: 5,
            child: Text('V'),
          )
        ],
      ):Stack(
        children: [
          Center(
            child: Container(
              // height: 200,
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Name', border: OutlineInputBorder()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'PhoneNo', border: OutlineInputBorder()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          labelText: 'Email', border: OutlineInputBorder()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          labelText: 'Password', border: OutlineInputBorder()),
                    ),
                  ),
                  TextButton(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Text('Register'),
                    ),
                    style: TextButton.styleFrom(primary: Colors.blue),
                    onPressed: ()  {
                      setState(() {
                      context.read<AuthService>().signUp(
                        email: emailController.text.trim(),
                        password: passwordController.text.trim(),
                      );
                      });
                    },
                  ),
                  TextButton(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Text('Login Instead?'),
                    ),
                    style: TextButton.styleFrom(primary: Colors.blue),
                    onPressed: ()  {
                      action = true;
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            right: 5,
            child: Text('V'),
          )
        ],
      ),
    );
  }
}