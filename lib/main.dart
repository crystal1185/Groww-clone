import 'package:flutter/material.dart';
import 'package:groww/views/pages/CustomAuth.dart';

import 'package:groww/views/pages/initialScreen.dart';
import 'package:groww/views/pages/OnBoardingScreen.dart';
import 'package:groww/views/pages/test.dart';

import 'package:provider/provider.dart';

main(List<String> args) {
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
      title: 'Groww',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: initialScreen(),
      ),
    );
  }
}
