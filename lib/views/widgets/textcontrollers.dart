import 'package:flutter/material.dart';

class InputTextController extends StatefulWidget {
  // const InputTextController({super.key});

  @override
  State<InputTextController> createState() => _InputTextControllerState();
}

class _InputTextControllerState extends State<InputTextController> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Eg: me@yahoo.com',
              labelText: 'EMAIL ADDRESS',
            ),
            validator: ((value) {
              if (value!.isEmpty ||
                  !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value!)) {
                return "Please enter valid email address";
              } else {
                return null;
              }
            }),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter the password',
              labelText: 'PASSWORD',
            ),
            validator: ((value) {
              if (value!.isEmpty ||
                  !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value!)) {
                return "Please enter valid password";
              } else {
                return null;
              }
            }),
          ),
        ],
      ),
    );
  }
}
