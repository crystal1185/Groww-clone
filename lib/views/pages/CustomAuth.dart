import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/EmailAuth.dart';
import 'Forgotpassword.dart';

/**
 *  In this Module. 
  Signup and SignIn are the same features.
 #1. If the user is valid in the data base it display the password field
 #2. If the user is not valid in the database it should display the OTP Screen.
 * 
 *  
 **/

class CustomAuthentication extends StatefulWidget {
  CustomAuthentication({super.key});

  @override
  State<CustomAuthentication> createState() => _CustomAuthenticationState();
}

class _CustomAuthenticationState extends State<CustomAuthentication> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          // UI Groww Logo
          Container(
            height: 50,
            // color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(height: 45, 'assets/splashScreen.png'),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Text(
                  "Groww",
                  style: GoogleFonts.prompt(
                      color: Colors.black,
                      fontSize: 26,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            child: TextFormFieldCreator(
                CustomhintText: 'Eg:me@yahoo.com',
                CustomlabelText: 'EMAIL ADDRESS'),
          ),
          Container(
            // color: Colors.red,
            height: 70,
            child: PasswordFormFieldCreator(
              CustomHintext: "8-32 characteres",
              CustomPasswordLabel: "ENTER PASSWORD",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPassword()),
                    );
                  },
                  child: const Text(
                    "Forgot password ?",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),

          ElevatedButton(onPressed: () {}, child: Text("KYC Details Checking")),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.grey.shade800,
              child: const Text('AB'),
            ),
            label: const Text('Aaron Burr'),
          )
        ],
      ),
    );
  }
}
