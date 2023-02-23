import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///widgets for Textform field

class TextFormFieldCreator extends StatelessWidget {
  String Customlabel;
  String CustomhintText;
  TextEditingController controller;
  TextInputType CustomKeyboard;
  TextFormFieldCreator(
      {super.key,
      required this.Customlabel,
      required this.CustomhintText,
      required this.CustomKeyboard,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: TextFormField(
        controller: controller,
        keyboardType: CustomKeyboard,
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            // border: UnderlineInputBorder(),
            hintText: CustomhintText,
            label: Text(
              Customlabel,
              style: TextStyle(color: Colors.grey[500]),
            )),
      ),
    );
  }
}

/// Widgets for PasswordForm Field.
class PasswordFormFieldCreator extends StatelessWidget {
  String CustomPasswordLabel;
  String CustomHintext;
  PasswordFormFieldCreator(
      {required this.CustomPasswordLabel, required this.CustomHintext});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: TextFormField(
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          label: Text(CustomPasswordLabel),
          hintText: CustomHintext,
          suffixIcon: Icon(Icons.remove_red_eye),
        ),
        validator: (value) => value!.length < 8 ? "Password too short" : null,
        obscureText: true,
      ),
    );
  }
}

/// Widget for the OTP :
class OtpFormFieldCreator extends StatelessWidget {
  String? Customlabel;
  String? CustomhintText;

  OtpFormFieldCreator({super.key, this.Customlabel, this.CustomhintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            // border: UnderlineInputBorder(),
            hintText: CustomhintText,
            label: Text(
              Customlabel!,
              style: TextStyle(color: Colors.grey[500]),
            )),
      ),
    );
  }
}

/// custom button
class CustomButton extends StatelessWidget {
  String? CustomText;
  Function()? onTap;

  CustomButton({required this.CustomText, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                CustomText!,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Custombtn extends StatelessWidget {
  String buttonName;
  Function onPressed;
  Custombtn({super.key, required this.buttonName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      margin: EdgeInsets.only(bottom: 15),
      child: ElevatedButton(
        onPressed: () async {
          onPressed;
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.88,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                buttonName,
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
    );
  }
}
