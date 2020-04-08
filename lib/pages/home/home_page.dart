import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("44"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          print("index");
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.beenhere),
            title: Text("123"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.beenhere),
            title: Text("123"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.beenhere),
            title: Text("123"),
          ),
        ],
      ),
    );
  }
}
