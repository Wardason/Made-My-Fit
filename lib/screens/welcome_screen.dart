import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:made_my_fit/components/rounded_button.dart';
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
      body: SizedBox.expand(
        child: Container(
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Test.jpg"), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: EdgeInsets.only(bottom: 100.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                RoundedButton(
                  title: 'Log In',
                  colour: Colors.black54,
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                ),
                RoundedButton(
                  title: 'Sign Up',
                  colour: Colors.black54,
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// login or registration to welcome screen use Navigator.pushReplacementNamed
