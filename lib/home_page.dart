import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'main.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('EEEE, MMMM d').format(now);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('$formattedDate'),
      ),
      body: Form(child: Column()),
      bottomNavigationBar:
          CurvedNavigationBar(backgroundColor: Colors.blueGrey, items: [
        Icon(Icons.home),
        Icon(Icons.camera_alt),
        Icon(Icons.bar_chart),
      ]),
    );
  }
}
