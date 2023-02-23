import 'package:flutter/material.dart';
import 'package:groww/provider/ThemeProvider.dart';
import 'package:provider/provider.dart';
import 'package:groww/styles/theme.dart';

class ChooseTheme extends StatefulWidget {
  const ChooseTheme({super.key});

  @override
  State<ChooseTheme> createState() => _ChooseThemeState();
}

class _ChooseThemeState extends State<ChooseTheme> {
  int _SelectedPosition = -1;
//
  // var isDarktheme;

  ThemeNotifier? themeNotifier;
  @override
  Widget build(BuildContext context) {
    // isDarktheme = Theme.of(context).brightness == Brightness.dark;
    themeNotifier = Provider.of<ThemeNotifier>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  themeNotifier!.setThemeMode(AppTheme().darktheme);
                },
                child: Text("Dark Mode ")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  themeNotifier!.setThemeMode(AppTheme().lightTheme);
                },
                child: Text("Light mode"))
          ],
        ));
  }
}

// /// creating list widget for radio button.
// Widget CreateList(context, item, index) {
//   return InkWell(
//     highlightColor: Colors.transparent,
//     splashColor: Colors.transparent,
//     onTap: () {

//     },
//     child: Row(
//       mainAxisSize: MainAxisSize.max,
//       children: [
//         Radio(
//             value: SelectedPosition,
//             groupValue: groupValue,
//             onChanged: onChanged)
//       ],
//     ),
//   );
// }
