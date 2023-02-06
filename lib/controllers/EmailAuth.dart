import 'package:flutter/material.dart';

///widgets for Textform field

class TextFormFieldCreator extends StatelessWidget {
  String CustomlabelText;
  String CustomhintText;
  TextFormFieldCreator(
      {super.key, required this.CustomlabelText, required this.CustomhintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: CustomlabelText,
          hintText: CustomhintText,
        ),
      ),
    );
  }
}

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
          labelText: CustomPasswordLabel,
          hintText: CustomHintext,
          suffixIcon: Icon(Icons.remove_red_eye),
        ),
        validator: (value) => value!.length < 8 ? "Password too short" : null,
        obscureText: true,
      ),
    );
  }
}

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
