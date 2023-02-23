import 'package:flutter/material.dart';
import 'package:groww/controllers/EmailAuth.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Text(
          "Reset Password",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),

          PasswordFormFieldCreator(
              CustomPasswordLabel: "New Password",
              CustomHintext: "8-32 characters"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          PasswordFormFieldCreator(
              CustomPasswordLabel: "Confirm New Password",
              CustomHintext: "8-32 characters"),
          // Container(
          //   color: Colors.red,
          //   height: MediaQuery.of(context).size.height * 0.1,
          // ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          CustomButton(
            CustomText: "Send OTP",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
