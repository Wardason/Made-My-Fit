import 'package:flutter/material.dart';
import 'package:made_my_fit/screens/bottomBar_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/all_imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MadeMyFit());
}

class MadeMyFit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        BottomBar.id: (context) => BottomBar(),
        HomeScreen.id: (context) => HomeScreen(),
        ModelScreen.id: (context) => ModelScreen(),
        WardrobeScreen.id: (context) => WardrobeScreen(),
        SettingScreen.id: (context) => SettingScreen(),
      },
    );
  }
}
