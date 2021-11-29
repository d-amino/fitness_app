// @dart=2.9

import 'package:firebase_core/firebase_core.dart';
import 'package:fitness_app/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/welcome_screen.dart';
import 'login_screen.dart';
import 'registration_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FitnessApp());
}

//void main() => runApp(FitnessApp());

class FitnessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        DashboardScreen.id: (context) => DashboardScreen(),
      },
    );
  }
}
