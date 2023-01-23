import 'package:flutter/material.dart';
import 'package:groww/views/pages/initialScreen.dart';

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
        body: initialScreen(),
      ),
    );
  }
}
