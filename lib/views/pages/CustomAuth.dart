import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controllers/EmailAuth.dart';
import 'Forgotpassword.dart';
import 'package:http/http.dart' as http;
import 'KycDetails.dart';

/**
    *  In this Module. 
     Signup and SignIn are the same features.
     #1. If the user is valid in the data base it display the password field
     #2. If the user is not valid in the database it should display the OTP Screen.
 **/

class CustomAuthentication extends StatefulWidget {
  CustomAuthentication({super.key});

  @override
  State<CustomAuthentication> createState() => _CustomAuthenticationState();
}

class _CustomAuthenticationState extends State<CustomAuthentication> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool? isVisible = false;

  Future<String?> signIn() async {
    String str = emailController.text;
    var response = await http.post(
      Uri.parse("http://192.168.29.129:3000/api/v1/auth/emailCheck"),
      body: json.encode({"email": str}),
    );
    print(emailController.text);
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
      debugPrint(response.body);
    }
    print("Failure--------");
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SingleChildScrollView(
            child: Column(children: [
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

          /// send data

          Container(
            height: 100,
            child: TextFormFieldCreator(
                CustomKeyboard: TextInputType.emailAddress,
                CustomhintText: 'Eg:me@yahoo.com',
                Customlabel: 'EMAIL ADDRESS',
                controller: emailController),
          ),

          // Container(
          //   height: 100,
          //   child: PasswordFormFieldCreator(
          //     CustomHintext: '8 - 32 characters',
          //     CustomPasswordLabel: 'Enter Password',
          //   ),
          // ),
          // Container(
          //   height: 100,
          //   child: OtpFormFieldCreator(
          //       CustomhintText: 'Enter OTP ',
          //       Customlabel: 'Enter OTP sent to this email ID'),
          // ),
        ])),
        Spacer(),
        Container(
          color: Colors.greenAccent,
          margin: EdgeInsets.only(bottom: 15),
          child: ElevatedButton(
            onPressed: () async {
              String str = emailController.text;
              var response = await http.post(
                  Uri.parse("http://192.168.1.24:3000/api/v1/auth/emailCheck"),
                  body: json.encode({"email": str}),
                  headers: {
                    "accept": "application/json",
                    "content-type": "application/json"
                  });
              print(emailController.text);
              print(response.body);
              if (response.statusCode == 200) {
                print(response.body);
              }
              print("Failure--------");
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.88,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Enter",
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
