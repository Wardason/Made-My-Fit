import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:made_my_fit/components/settings_option_row.dart';
import 'package:made_my_fit/screens/all_imports.dart';

class SettingScreen extends StatefulWidget {
  static const String id = 'setting_screen';

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: <Widget>[
            Text(
              'Settings',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Account',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildAccountOptionRow(context, 'Change password'),
            buildAccountOptionRow(context, 'Content settings'),
            buildAccountOptionRow(context, 'Social'),
            buildAccountOptionRow(context, 'Language'),
            buildAccountOptionRow(context, 'Privacy and security'),
            SizedBox(
              height: 40,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.volume_up_outlined,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Notifications',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildNotificationOptionRow('New for you', true),
            buildNotificationOptionRow('Account activity', true),
            buildNotificationOptionRow('Opportunity', false),
            SizedBox(
              height: 40,
            ),
            Center(
              child: OutlineButton(
                padding: EdgeInsets.symmetric(horizontal: 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () async {
                  Navigator.pushNamed(context, WelcomeScreen.id);
                  //await FirebaseAuth.instance.signOut();
                },
                child: Text(
                  'SIGN OUT',
                  style: TextStyle(
                      fontSize: 16, letterSpacing: 2.2, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
