import 'package:flutter/material.dart';
import 'package:made_my_fit/screens/login_screen.dart';
import 'package:made_my_fit/screens/registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          'Welcome Screen',
        ),
      ),
      body: SizedBox.expand(
        child: Container(
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Start_Screen.PNG"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: <Widget>[
              OutlineButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
                child: Text('Login'),
              ),
              OutlineButton(
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                },
                child: Text('Registration'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
