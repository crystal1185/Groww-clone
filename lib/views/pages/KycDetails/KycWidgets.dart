import 'package:flutter/material.dart';

/// ReUsable Widgets for the Choice Chips

class CustomChoiceChips extends StatelessWidget {
  String CustomLabel;

  CustomChoiceChips(
      {super.key, required this.CustomLabel, required Color backgroundColor});

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(CustomLabel),
      selected: true,
      backgroundColor: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      onSelected: (value) {},
    );
  }
}
