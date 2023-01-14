import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainHomeScreen());
}

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

/// this is to document the code for stateless widgets for groww application software.
class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          shadowColor: Colors.greenAccent,
          title: Text('Groww'),
        ),
        body: Container(
          height: 100,
          width: 411,
          color: Colors.grey[400],
        ),
      ),
    );
  }
}
