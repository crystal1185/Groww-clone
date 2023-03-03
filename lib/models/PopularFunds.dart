import 'package:flutter/material.dart';

class popularfunds {
  String? image;
  String? fundName;
  String? equityName;
  String? percentage;
  String? returnyears;

  popularfunds({
    required this.image,
    required this.fundName,
    required this.equityName,
    this.percentage,
    this.returnyears,
  });
}
