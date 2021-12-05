import 'package:fitness_app/rounded_button.dart';
import 'package:fitness_app/video/videoplayer_screen.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/Weather/loading_screen.dart';

class DashboardScreen extends StatefulWidget {
  static const String id = 'dashboard_screen';

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RoundedButton(
                title: 'Weather',
                colour: Colors.black,
                onPressed: () {
                  Navigator.pushNamed(context, LoadingScreen.id);
                }),
            RoundedButton(
                title: 'Videos',
                colour: Colors.black,
                onPressed: () {
                  Navigator.pushNamed(context, VideoPlayerScreen.id);
                }),
          ],
        ),
      ),
    );
  }
}
