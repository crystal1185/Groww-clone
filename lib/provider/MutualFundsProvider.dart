import 'package:flutter/material.dart';

import '../models/PopularFunds.dart';


class MutualFundsProvider extends ChangeNotifier{

  List<popularfunds> numOfFunds = [
    popularfunds(
    image: "assets/quant.png", 
    fundName: "Quant Small Cap Fund Direct Plan Growth", 
    equityName: "Equity Small Cap",
    percentage: "53.15 %",
    returnyears: "3Y Returns"
    ),
    popularfunds(image: "assets/icici.png", 
    fundName: "ICICI Prudential Commodities Fund Direct",
     equityName: "Equity Sectoral / Thematic",
     percentage: "44.0%",
     returnyears: "3Y Returns"
     ),
    popularfunds(image: "assets/nippon.png", 
    fundName: "Nippon India Small Cap Fund Direct Growth",
     equityName: "Equity Small Cap",
     percentage: "23.96%",
     returnyears: "3Y Returns"),
    popularfunds(image: "assets/axisbank.png",
     fundName: "Axis Bluechip Fund Direct Plan Growth",
      equityName: "Equity Large Cap",
      percentage: "34.36%",
      returnyears: "3Y Returns"),
  ];
}