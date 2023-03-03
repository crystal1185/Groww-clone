import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:groww/provider/StockDetailsProvider.dart';
import 'package:groww/test.dart';
import 'package:groww/views/pages/CustomAuth.dart';
import 'package:groww/views/pages/DashBoard/MainScreenDashboard.dart';
import 'package:groww/views/pages/SettingsPage/ThemeSelect.dart';

import 'package:groww/views/pages/initialScreen.dart';

import 'package:provider/provider.dart';
import 'package:groww/styles/colors.dart';
import 'package:groww/styles/theme.dart';
import 'Demo.dart';
import 'DemoModal.dart';
import 'package:groww/provider/ThemeProvider.dart';

import 'navigations/tabbar.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DemoModal(),
        ),
        ChangeNotifierProvider(
          create: (context) => TestModal(),
        ),
        ChangeNotifierProvider(
          create: (context) => StockDetailsNotifier(),
        ),
      ],
      child: MaterialApp(
        title: 'Groww',
        // theme: ThemeData(
        //   primarySwatch: Palette.kToDark,
        // )
        // ,
        theme: AppTheme().lightTheme,
        //theme: AppTheme().lightTheme,
        darkTheme: AppTheme().darktheme,

        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: tabbar(),
        ),
      ),
    );
  }
}
