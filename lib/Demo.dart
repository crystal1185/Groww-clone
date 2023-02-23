import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:provider/provider.dart';

import 'DemoModal.dart';

class ExampleApp extends StatefulWidget {
  const ExampleApp({super.key});

  @override
  State<ExampleApp> createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  TextEditingController controller = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<DemoModal>(context);

    return Scaffold(
      appBar: AppBar(
        title: AppBar(
          title: Text("Provider"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: CustomTextField(
                CustomInputType: TextInputType.text,
                controller: controller,
                CustomLabelText: "Email",
                CustomhintText: "eg: example@gmail.com",
                CustomlabelText: "Email"),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: CustomTextField(
                CustomInputType: TextInputType.number,
                controller: phoneController,
                CustomLabelText: "Mobile",
                CustomhintText: "eg: 9444XXXXX5",
                CustomlabelText: "Mobile"),
          ),
          ElevatedButton(
            onPressed: () {
              counterProvider.updatedData(controller, phoneController);
            },
            child: Text("Submit "),
          ),
          Text(
            counterProvider.Data,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Text(counterProvider.MobileData),
        ],
      ),
    );
  }
}

/// Reusable Custom Text Field
class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  String CustomlabelText;
  String CustomhintText;
  String CustomLabelText;
  TextInputType CustomInputType;
  CustomTextField(
      {Key? key,
      required this.controller,
      required this.CustomInputType,
      required this.CustomLabelText,
      required this.CustomhintText,
      required this.CustomlabelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: CustomInputType,
      controller: controller,
      decoration: InputDecoration(
          label: Text(CustomlabelText),
          hintText: CustomhintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );
  }
}
