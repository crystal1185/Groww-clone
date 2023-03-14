import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../controllers/EmailAuth.dart';
import '../../provider/ServerProvider.dart';
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

  bool loading = true;
  bool isWidgetVisible = false;
  bool emailBoolean = false;
  bool otpBoolean = false;
  bool passwordBoolean = false;

  @override
  Widget build(BuildContext context) {
    final loginCheckprovider = Provider.of<ServerProvider>(context);

    return Scaffold(
        body: Column(
      children: [
        SingleChildScrollView(
          child: Column(
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
              isWidgetVisible
                  ? loading
                      ? Container(
                          height: 100,
                          child: PasswordFormFieldCreator(
                            CustomHintext: '8 - 32 characters',
                            CustomPasswordLabel: 'Enter Password',
                            controller: passwordController,
                          ),
                        )
                      : Container(
                          height: 100,
                          child: OtpFormFieldCreator(
                            CustomhintText: 'Enter OTP ',
                            Customlabel: 'Enter OTP sent to this email ID',
                            controller: otpController,
                          ),
                        )
                  : Container(),
            ],
          ),
        ),
        Spacer(),
        Container(
          color: Colors.greenAccent,
          margin: EdgeInsets.only(bottom: 15),
          child: ElevatedButton(
            onPressed: () async {
              String str = emailController.text;

              /// checks for email controller (if email is present in the DB -> true , else -> false).
              if (!emailBoolean) {
                var response = await http.post(
                    Uri.parse(
                        "${loginCheckprovider.Server_IP}/api/v1/validate/emailCheck"),
                    body: json.encode({"email": str}),
                    headers: {
                      "accept": "application/json",
                      "content-type": "application/json"
                    });
                print(emailController.text);
                print(response.body);

                /// check the response code.
                if (response.statusCode == 200) {
                  print("============${response.body}===========");
                  loginCheckprovider.checkIfLogin(response.body);
                  if (loginCheckprovider.loginCheck!.data.check) {
                    setState(() {
                      isWidgetVisible = true;
                      emailBoolean = true;

                      passwordBoolean = true;
                    });
                  }
                } else {
                  var sendotp = await http.post(
                    Uri.parse(
                        "${loginCheckprovider.Server_IP}/api/v1/auth/sendOtp"),
                    body: json.encode({"email": str}),
                  );

                  setState(() {
                    isWidgetVisible = true;
                    loading = false;
                    otpBoolean = true;
                    emailBoolean = true;
                  });
                }
              }
              if (emailBoolean && otpBoolean) {
                // to do the otp calling.
                String otpCheck = otpController.text;
                var otpResponse = await http.post(
                  Uri.parse(
                      "${loginCheckprovider.Server_IP}/api/v1/auth/verifyEmail"),
                  body: json.encode(
                    {
                      "email": str,
                      "otp": otpCheck,
                    },
                  ),
                  headers: {
                    "accept": "application/json",
                    "content-type": "application/json"
                  },
                );
                debugPrint(otpCheck);
                // debugPrint(otpResponse.body);
                // to check the response code of the otp:
                if (otpResponse.statusCode == 200) {

                }

                // Navigate to another page -> set the password page.
              }
              if (emailBoolean && passwordBoolean) {
                // to do the password calling.
                String passwordCheck = passwordController.text;
                var passwordResponse = await http.post(
                  Uri.parse(
                      "${loginCheckprovider.Server_IP}/api/v1/auth/login"),
                  body: json.encode({
                    "email": str,
                    "password": passwordCheck,
                  }),
                  headers: {
                    "accept": "application/json",
                    "content-type": "application/json"
                  },
                );
                // to check the response code for the password checking.
                if (passwordResponse.statusCode == 200) {
                  debugPrint(passwordResponse.body);
                     
                
                  // if the passoword is satisfied , navigate to the Stocks Page UI
                }
              }
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
        ),
      ],
    ));
  }
}
